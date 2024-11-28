import 'package:flutter/material.dart';
import 'package:ligapay/desktop/contact_page.dart';
import 'package:ligapay/widgets/custom_desktop_card1.dart';
import 'package:ligapay/widgets/custom_desktop_card2.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/footer_desktop_card.dart';
import 'package:ligapay/widgets/hero_desktop.dart';
import 'package:ligapay/widgets/text_header_desktop.dart';

// ignore: use_key_in_widget_constructors
class DesktopRemitancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: DefaultTextStyle(
        style: const TextStyle(fontFamily: 'Utendo'),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [

             HeroDesktop(
          backgroundImageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr1.png",
          title: "Fast, Affordable, and Secure \n International Transfers",
          subtitle: "LigaRemit makes sending money across borders easier than ever. \n With competitive exchange rates and lightning-fast transfers, you can send money to any bank,\n anywhere in the world.",
          buttonText: "Join the waiting list",
          onButtonPressed: () {
            // Handle button press here
            print("Button Pressed");
          },
        ),
              
              
 const TextHeaderDesktop(
  text: 'Why Choose LigaRemit?',
),
              const CustomDesktopCard1(
               
  title: 'Best Exchange Rates',
  description: 'Get the most out of every transaction with our highly competitive exchange rates.',
   imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr2.png',
  descriptionMaxLines: 6, 
  imageHeight: 508, // Custom height for the image
  imageWidth: 675,// Show up to 6 lines, adjust as needed
),
 const CustomDesktopCard2(
               
  title: 'Instant Transfers',
  description: 'Send money globally in seconds with our reliable and efficient transfer system.',
   imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr3.png',
  descriptionMaxLines: 6,
   imageHeight: 496, // Custom height for the image
  imageWidth: 675, // Show up to 6 lines, adjust as needed
),
 const CustomDesktopCard1(
               
  title: 'Global Reach',
  description: 'Transfer funds to any bank account, in any country, without limitations.',
   imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr4.png',
  descriptionMaxLines: 6, 
  imageHeight: 550, // Custom height for the image
  imageWidth: 675,// Show up to 6 lines, adjust as needed
),
 const CustomDesktopCard2(
               
  title: 'Save on Every Transaction',
  description: 'Keep more of your money with our low fees and great rates—helping you save on every transfer.',
   imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr5.png',
  descriptionMaxLines: 6,
   imageHeight: 516, // Custom height for the image
  imageWidth: 675, // Show up to 6 lines, adjust as needed
),
 const CustomDesktopCard1(
               
  title: 'Secure and Safe',
  description: 'Rest easy knowing that your money is protected by our robust security measures.',
   imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr6.png',
  descriptionMaxLines: 6, 
  imageHeight: 486, // Custom height for the image
  imageWidth: 675,// Show up to 6 lines, adjust as needed
),
              const SizedBox(height: 50),
             FooterDesktopCard(
  backgroundImage: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr7.png',
  title: 'Your Instant Global Money Transfer Solution',
  subtitle: 'With LigaRemit, transferring money internationally has never been simpler, faster, or more secure.',
  buttonText: 'Join the waiting list',
  onButtonPressed: () {
    print('Button Pressed');
  },
),
              CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
