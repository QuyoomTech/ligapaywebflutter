import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: use_key_in_widget_constructors
class PricingPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate to the contact page using GoRouter
            context.go('/');
          },
        ),
        title: const Text('Pricing'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Text(
                  'LigaPay offers competitive, transparent, and affordable pricing for personal, business, and international transfers. We provide zero-fee P2P transfers for small amounts and low-cost fees for larger transactions, with discounts for high-volume businesses. Our international remittances come with low flat fees and no hidden charges, ensuring transparency and value. With fast transfer times, real-time updates on the transfer, and real exchange rates, LigaPay delivers cost-effective, reliable services for everyday users and businesses alike. We also offer premium options for expedited transfers and multi-currency accounts, making LigaPay the smarter choice for sending money worldwide.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Utendo',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
