import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/custom_mobile_card1.dart';

import 'package:ligapay/widgets/footer_mobile_card.dart';
import 'package:ligapay/widgets/hero_mobile.dart';
import 'package:ligapay/widgets/text_header_mobile.dart';

class MobileRemitancePage extends StatelessWidget {
  const MobileRemitancePage({super.key});

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
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr1.png",
                title:
                    "Fast, Affordable, and \n Secure  International \n Transfers",
                subtitle:
                    "LigaRemit makes sending money across \n borders easier than ever.  With competitive  \n exchange rates and lightning-fast transfers,\n you can send money to any bank,\n anywhere in the world.",
                buttonText: "Join the waiting list",
               onButtonPressed: () {
  // Handle button press here
  print("Button Pressed");

  // Navigate to the contact page using GoRouter
  context.go('/waitinglist');
},

              ),
             // const SizedBox(height: 16),
               const TextHeaderMobile(
                text: 'Why Choose LigaRemit ?',
              ),
              const CustomMobileCard1(
                title: 'Best Exchange Rates',
                description:
                    'Get the most out of every transaction with our highly competitive exchange rates.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr2.png',
                descriptionMaxLines: 6,
                imageHeight: 280, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const CustomMobileCard1(
                title: 'Instant Transfers',
                description:
                    'Send money globally in seconds with our reliable and efficient transfer system.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr3.png',
                descriptionMaxLines: 6,
                imageHeight: 280, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const CustomMobileCard1(
                title: 'Global Reach',
                description:
                    'Transfer funds to any bank account, in any country, without limitations.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr4.png',
                descriptionMaxLines: 6,
                imageHeight: 250, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const CustomMobileCard1(
                title: 'Save on Every Transaction',
                description:
                    'Keep more of your money with our low fees and great rates—helping you save on every transfer.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr5.png',
                descriptionMaxLines: 6,
                imageHeight: 200, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const CustomMobileCard1(
                title: 'Secure and Safe',
                description:
                    'Rest easy knowing that your money is protected by our robust security measures.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr6.png',
                descriptionMaxLines: 6,
                imageHeight: 280, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              MobileFooterCard(
                imageUrl:
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/imgm14.png",
                titleText: "Fast transfers\nwithout fee",
                descriptionText:
                    "No additional charges just unlimited transactions",
                buttonText: "Join the waiting list",
                onButtonPressed: () {
  // Handle button press here

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
