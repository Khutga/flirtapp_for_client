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
    final bool isAvailable = await _iap.isAvailable();
    if (!isAvailable) return;
    await _restorePurchases();
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text('Unlock Premium Conversations',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            Text(
              'Gain access to all exclusive conversations and enhance your flirting skills.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text('Unlock All Premium'),
              onPressed: () {
                Navigator.pop(context);
                _buyPremium();
              },
            ),
            const SizedBox(height: 10),
            TextButton(
              child: Text('Restore Purchases',
                  style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
              onPressed: () {
                Navigator.pop(context);
                _restorePurchases();
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            child: Text('Cancel', style: TextStyle(color: Colors.grey)),
            onPressed: () => Navigator.pop(context),
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
          elevation: 1,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: Text('Conversations', style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.settings_outlined, color: Theme.of(context).iconTheme.color),
            onPressed: () => Navigator.pushNamed(context, 'settings_screen'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                icon: Icon(Icons.person_outline_rounded, color: Theme.of(context).iconTheme.color, size: 28),
                onPressed: () => Navigator.pushNamed(context, 'profile_screen'),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your Messages', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500)),
              const SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: conversations.length,
                  itemBuilder: (BuildContext context, int i) {
                    final conversation = conversations[i];
                    final isPremiumContent = conversation.isPremium;

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Consumer<ThemeProvider>(
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
                      ),
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
    return Stack(
      children: [
        Opacity(
          opacity: 0.7,
          child: ChatBox(
            data: conversation,
            darkMode: darkMode,
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: _showPremiumDialog,
              borderRadius: BorderRadius.circular(12), 
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.lock_rounded, size: 25, color: Colors.white),
                     SizedBox(height: 4),
                      Text(
                        'Premium Content',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Tap to Unlock',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}