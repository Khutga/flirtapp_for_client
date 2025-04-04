// Updated PurchaseManager with debug logging
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PurchaseManager {
  static const String _premiumProductId = 'premium_conversations';
  static const String _prefKey = 'premium_status';
  final InAppPurchase _iap = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  
  bool _isPremium = false;
  bool get isPremium => _isPremium;

  Future<void> initialize() async {
    try {
      debugPrint('Initializing purchases...');
      
      // 1. Load saved purchase status
      _isPremium = await _checkPurchaseStatus();
      debugPrint('Initial premium status: $_isPremium');

      // 2. Check IAP availability
      final bool available = await _iap.isAvailable();
      debugPrint('IAP available: $available');
      if (!available) return;

      // 3. Set up purchase listener
      _subscription = _iap.purchaseStream.listen(
        _handlePurchaseUpdate,
        onError: (error) => debugPrint('Purchase error: $error'),
      );

      // 4. Load products
      await _getProducts();

      // 5. For testing: Add static response in emulator
      if (kDebugMode) {
        debugPrint('Running in debug mode - enabling test purchases');
      }
    } catch (e) {
      debugPrint('Initialization error: $e');
    }
  }

  Future<bool> _checkPurchaseStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_prefKey) ?? false;
  }

  Future<void> _savePurchaseStatus(bool status) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_prefKey, status);
  }

  Future<void> _getProducts() async {
    try {
      debugPrint('Loading products...');
      final response = await _iap.queryProductDetails({_premiumProductId});
      
      if (response.notFoundIDs.isNotEmpty) {
        debugPrint('Missing products: ${response.notFoundIDs}');
      }
      
      if (response.productDetails.isNotEmpty) {
        debugPrint('Found product: ${response.productDetails.first}');
      } else {
        debugPrint('No products found');
      }
    } catch (e) {
      debugPrint('Product load error: $e');
    }
  }

  Future<void> buyPremium() async {
    try {
      debugPrint('Starting purchase flow...');
      
      final response = await _iap.queryProductDetails({_premiumProductId});
      if (response.productDetails.isEmpty) {
        debugPrint('Product not available');
        return;
      }

      final product = response.productDetails.first;
      debugPrint('Purchasing: ${product.title} (${product.price})');

      await _iap.buyConsumable(
        purchaseParam: PurchaseParam(
          productDetails: product,
          applicationUserName: null, // Optional user identifier
        ),
      );
    } catch (e) {
      debugPrint('Purchase failed: $e');
      rethrow;
    }
  }

  void _handlePurchaseUpdate(List<PurchaseDetails> purchases) {
    debugPrint('Received ${purchases.length} purchase updates');
    for (final purchase in purchases) {
      debugPrint('Purchase status: ${purchase.status}');
      if (purchase.status == PurchaseStatus.purchased) {
        _verifyPurchase(purchase);
      }
    }
  }

  Future<void> _verifyPurchase(PurchaseDetails purchase) async {
    try {
      debugPrint('Verifying purchase: ${purchase.productID}');
      
      if (purchase.pendingCompletePurchase) {
        await _iap.completePurchase(purchase);
        debugPrint('Purchase completed');
      }

      if (purchase.productID == _premiumProductId) {
        _isPremium = true;
        await _savePurchaseStatus(true);
        debugPrint('Premium access granted');
      }
    } catch (e) {
      debugPrint('Verification failed: $e');
    }
  }

  Future<void> restorePurchases() async {
    try {
      debugPrint('Restoring purchases...');
      await _iap.restorePurchases();
    } catch (e) {
      debugPrint('Restore failed: $e');
    }
  }

  void dispose() {
    _subscription.cancel();
    debugPrint('Purchase manager disposed');
  }
}