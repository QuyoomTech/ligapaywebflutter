import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/custom_mobile_card1.dart';

import 'package:ligapay/widgets/footer_mobile_card.dart';
import 'package:ligapay/widgets/hero_mobile.dart';
import 'package:ligapay/widgets/text_header_mobile.dart';

// ignore: use_key_in_widget_constructors
class MobilePersonalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F3FF),
      body: DefaultTextStyle(
        style: const TextStyle(fontFamily: 'Utendo'),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              HeroMobile(
                backgroundImageUrl:
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lp1.png",
                title: " LigaPay \n Personal Account",
                subtitle:
                    "With LigaPay, managing your personal \n finances is easier, smarter, and more secure.",
                buttonText: "Join the waiting list",
                onButtonPressed: () {
  // Handle button press here
  print("Button Pressed");

  // Navigate to the contact page using GoRouter
  context.go('/waitinglist');
},

              ),
              const TextHeaderMobile(
                text: 'Why Personal \n Account ?',
              ),
              const CustomMobileCard1(
                title: 'Transfer Money in a Snap',
                description:
                    'Send money to anyone using their email, phone number, or username—choose whichever method suits you best.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lp2.png',
                descriptionMaxLines: 6,
                imageHeight: 220, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const CustomMobileCard1(
                title: 'Get Paid Easily',
                description:
                    'Create and share a payment link to receive money instantly, without limits.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lp3.png',
                descriptionMaxLines: 6,
                imageHeight: 220, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const CustomMobileCard1(
                title: 'Add & Pay with a Debit Card',
                description:
                    'Seamlessly load funds into your LigaPay wallet or make payments directly with your debit card.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lp4.png',
                descriptionMaxLines: 6,
                imageHeight: 220, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const CustomMobileCard1(
                title: 'Simple Withdrawals',
                description:
                    'Withdraw your money anytime to your local bank account with just a few clicks.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lp5.png',
                descriptionMaxLines: 6,
                imageHeight:220, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const SizedBox(height: 16),
              MobileFooterCard(
                imageUrl:
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/imgm14.png",
                titleText: "Fast transfers\nwithout fee",
                descriptionText:
                    "No additional charges just unlimited transactions",
                buttonText: "Join the waiting list",
                onButtonPressed: () {
  // Handle button press here
  print("Button Pressed");

  // Navigate to the contact page using GoRouter
  context.go('/waitinglist');
},

              ),
              const SizedBox(height: 16),
              CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
