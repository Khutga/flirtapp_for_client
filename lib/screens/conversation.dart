import 'dart:async';

import 'package:flirt_coach/models/index.dart';
import 'package:flirt_coach/models/purchase_manager.dart';
import 'package:flirt_coach/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../data.dart';
import '../providers/index.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  List<Conversation> conversations =
      data.map((e) => Conversation.fromJson(e)).toList();
  late InAppPurchase _iap;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  bool _isPremium = false;

  @override
  void initState() {
    super.initState();
    _iap = InAppPurchase.instance;
    _initializePurchase();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  Future<void> _initializePurchase() async {
    // Check if purchases are available
    final bool isAvailable = await _iap.isAvailable();
    if (!isAvailable) return;

    // Restore previous purchases
    await _restorePurchases();

    // Listen to purchase updates
    _subscription = _iap.purchaseStream.listen(_handlePurchaseUpdate);
  }

  Future<void> _restorePurchases() async {
    try {
      await _iap.restorePurchases();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to restore purchases: $e')),
      );
    }
  }

  void _handlePurchaseUpdate(List<PurchaseDetails> purchases) {
    for (var purchase in purchases) {
      if (purchase.status == PurchaseStatus.purchased) {
        _verifyPurchase(purchase);
      }
    }
  }

  Future<void> _verifyPurchase(PurchaseDetails purchase) async {
    // In production, verify purchase with your server
    // For testing, just complete the purchase
    if (purchase.pendingCompletePurchase) {
      await _iap.completePurchase(purchase);
    }

    if (purchase.productID == 'premium_conversations') {
      setState(() {
        _isPremium = true;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Premium content unlocked!')),
      );
    }
  }

  Future<void> _buyPremium() async {
    try {
      const productId = 'premium_conversations';
      final ProductDetailsResponse response =
          await _iap.queryProductDetails({productId});

      if (response.notFoundIDs.contains(productId)) {
        throw Exception('Product not found in Play Store');
      }

      if (response.productDetails.isEmpty) {
        throw Exception('No products available');
      }

      final product = response.productDetails.first;
      final purchaseParam = PurchaseParam(productDetails: product);

      await _iap.buyConsumable(purchaseParam: purchaseParam);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Purchase failed: ${e.toString()}')),
      );
    }
  }

void _showPremiumDialog() {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Premium Content', style: Theme.of(context).textTheme.titleLarge),
      content: Text(
        'Unlock all premium conversations with a one-time purchase.',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      actions: [
        TextButton(
          child: Text('Cancel', style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
          onPressed: () => Navigator.pop(context),
        ),
        ElevatedButton( 
          child: const Text('Purchase'),
          onPressed: () {
            Navigator.pop(context);
            _buyPremium();
          },
        ),
        TextButton(
          child: Text('Restore', style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          onPressed: () {
            Navigator.pop(context);
            _restorePurchases();
          },
        ),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                icon: const Icon(
                  Icons.person_4_sharp,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.pushNamed(context, 'profile_screen'),
              ),
            ),
          ],
          centerTitle: true,
          title: const Text('Conversations'),
          leading: IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pushNamed(context, 'settings_screen'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text('Messages'),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: conversations.length,
                  itemBuilder: (BuildContext context, int i) {
                    final conversation = conversations[i];
                    final isPremiumContent = conversation.isPremium;

                    return Consumer<ThemeProvider>(
                      builder: (context, themeProvider, child) {
                        final darkMode = themeProvider.isDarkMode;

                        if (isPremiumContent && !_isPremium) {
                          return _buildPremiumLockedChatBox(
                              conversation, darkMode);
                        } else {
                          return ChatBox(
                            data: conversation,
                            darkMode: darkMode,
                          );
                        }
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPremiumLockedChatBox(Conversation conversation, bool darkMode) {
    return Opacity(
      opacity: 0.6,
      child: Stack(
        children: [
          ChatBox(
            data: conversation,
            darkMode: darkMode,
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.3),
              child: Center(
                child: IconButton(
                  icon: const Icon(Icons.lock, size: 40, color: Colors.white),
                  onPressed: _showPremiumDialog,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
