import 'package:flutter/material.dart';
import 'package:ligapay/desktop/contact_page.dart';
import 'package:ligapay/widgets/custom_desktop_card1.dart';
import 'package:ligapay/widgets/custom_desktop_card2.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/footer_desktop_card.dart';
import 'package:ligapay/widgets/hero_desktop.dart';


// ignore: use_key_in_widget_constructors
class DesktopPersonalPage extends StatelessWidget {
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
          backgroundImageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img1.png",
          title: "Welcome to LigaPay",
          subtitle: "Your All-in-One Financial Solution\nDon’t miss out—secure your spot now!",
          buttonText: "Join the waiting list",
          onButtonPressed: () {
            // Handle button press here
            print("Button Pressed");
          },
        ),
              
              
const CustomDesktopCard1(
               
  title: 'Share Payment Links Instantly',
  description: 'Make it simple for your clients to pay—just send them a link, and they can complete the payment in moments.',
   imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb4.png?width=567&height=594',
  descriptionMaxLines: 6, // Show up to 6 lines, adjust as needed
),
 const CustomDesktopCard2(
               
  title: 'Share Payment Links Instantly',
  description: 'Make it simple for your clients to pay—just send them a link, and they can complete the payment in moments.',
   imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb5.png?width=200&height=200',
  descriptionMaxLines: 6, // Show up to 6 lines, adjust as needed
),
 const CustomDesktopCard1(
               
  title: 'Manage Risk with Confidence',
  description: 'Built-in risk management tools help safeguard your business, keeping your transactions secure and your peace of mind intact.',
   imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lp6.png',
  descriptionMaxLines: 6, // Show up to 6 lines, adjust as needed
),
              
              const SizedBox(height: 50),
             FooterDesktopCard(
  backgroundImage: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img1.png',
  title: 'LigaPay Business Account',
  subtitle: 'The smart choice for businesses that demand speed, security, and scalability.',
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
