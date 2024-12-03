import 'dart:core';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/custom_mobile_card1.dart';

import 'package:ligapay/widgets/footer_mobile_card.dart';
import 'package:ligapay/widgets/hero_mobile.dart';
import 'package:ligapay/widgets/text_header_mobile.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileBusinessPage extends StatelessWidget {
  const MobileBusinessPage({super.key});

  void _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb1.png",
                title: "Empower Your \n Business \n with LigaPay",
                subtitle:
                    "Streamline your business transactions and \n take control of your finances with a \n smart, flexible payment platform that’s \n built to grow with you.",
                buttonText: "Join the waiting list",
                onButtonPressed: () {
  // Handle button press here
  print("Button Pressed");

  // Navigate to the contact page using GoRouter
  context.go('/contact');
},

              ),
              const TextHeaderMobile(
                text: 'Why LigaPay?',
              ),
              const CustomMobileCard1(
                title: 'Fast Withdrawals',
                description:
                    'Access your funds quickly and efficiently, ensuring you have the cash flow needed to run your business smoothly.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb2.png',
                descriptionMaxLines: 6,
                imageHeight: 324, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const CustomMobileCard1(
                title: 'Share Payment Links Instantly',
                description:
                    'Make it simple for your clients to pay—just send them a link, and they can complete the payment in moments.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb4.png?width=567&height=594',
                descriptionMaxLines: 6,
                imageHeight: 324, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const CustomMobileCard1(
                title: 'Unlimited Transactions',
                description:
                    'Scale your business without restrictions. LigaPay offers unlimited transactions so you can focus on growth',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb5.png?width=200&height=200',
                descriptionMaxLines: 6,
                imageHeight: 324, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const CustomMobileCard1(
                title: 'Manage Risk with Confidence',
                description:
                    'Built-in risk management tools help safeguard your business, keeping your transactions secure and your peace of mind intact.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb6.png',
                descriptionMaxLines: 6,
                imageHeight: 324, // Custom height for the image
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
  context.go('/contact');
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
