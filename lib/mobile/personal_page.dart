import 'package:flutter/material.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/custom_mobile_card1.dart';
import 'package:ligapay/widgets/footer_desktop_card.dart';
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
                  // Define what happens when the button is pressed
                  Navigator.pushNamed(context, '/nextPage');
                },
              ),
              const TextHeaderMobile(
                text: 'Why LigaPay?',
              ),
              const CustomMobileCard1(
                title: 'Transfer Money in a Snap',
                description:
                    'Send money to anyone using their email, phone number, or username—choose whichever method suits you best.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lp2.png',
                descriptionMaxLines: 6,
                imageHeight: 422, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const CustomMobileCard1(
                title: 'Transfer Money in a Snap',
                description:
                    'Send money to anyone using their email, phone number, or username—choose whichever method suits you best.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lp2.png',
                descriptionMaxLines: 6,
                imageHeight: 422, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const CustomMobileCard1(
                title: 'Transfer Money in a Snap',
                description:
                    'Send money to anyone using their email, phone number, or username—choose whichever method suits you best.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lp2.png',
                descriptionMaxLines: 6,
                imageHeight: 422, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),
              const CustomMobileCard1(
                title: 'Transfer Money in a Snap',
                description:
                    'Send money to anyone using their email, phone number, or username—choose whichever method suits you best.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lp2.png',
                descriptionMaxLines: 6,
                imageHeight: 422, // Custom height for the image
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
                  print("Button pressed!");
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
