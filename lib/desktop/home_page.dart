import 'dart:core';
import 'package:flutter/material.dart';
import 'package:ligapay/desktop/contact_page.dart';
import 'package:ligapay/widgets/custom_desktop_card2.dart';
import 'package:ligapay/widgets/custom_header_desktop.dart';
import 'package:ligapay/widgets/footer_desktop_card.dart';
import 'package:ligapay/widgets/hero_desktop.dart';

import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/square_image_desktop.dart';

import 'package:url_launcher/url_launcher.dart';

// Import the widget file
// Import the widget file
class DesktopHomePage extends StatefulWidget {
  const DesktopHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DesktopHomePageState createState() => _DesktopHomePageState();
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xffF2F3FF),
      body: DefaultTextStyle(
        style: const TextStyle(fontFamily: 'Utendo'),
        child: SingleChildScrollView(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
             
   HeroDesktop(
          backgroundImageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img1.png",
          title: "Welcome to \n LigaPay",
          subtitle: "Your All-in-One Financial Solution\nDon’t miss out—secure your spot now!",
          buttonText: "Join the waiting list",
          onButtonPressed: () {
            // Handle button press here
            print("Button Pressed");
          },
        ),
          

              const CustomDesktopCard2(
                title: 'Seamless Payments, Anytime, Anywhere.',
                description:
                    'LigaPay makes payments effortless and secure, whether you are transferring money, paying for services, handling business payments, or managing finances. Available 24/7 worldwide, LigaPay offers seamless, hassle-free transactions anytime, anywhere, with just the touch of a button.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img2.png',
                descriptionMaxLines: 6,
                titleMaxLines: 6, // Show up to 6 lines, adjust as needed
              ),
             
              const CustomHeaderDesktop(
            title: 'Why LigaPay?',
          ),
          Container(
  width: 1500,
  height: 775,
  //padding: const EdgeInsets.all(50),
  clipBehavior: Clip.antiAlias,
  decoration: const BoxDecoration(color: Colors.transparent),
  child: const Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    SquareImageDesktop(
            imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img3.png",
            title: "Global Wallet Access",
            description:
                "Manage your USD wallet for personal or business use, accessible from anywhere in the world.",
          ),
           const SizedBox(
                         
                          width: 50,
                        ),
          SquareImageDesktop(
            imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img4.png",
            title: "Effortless Money Transfers",
            description:
                "Send money to anyone using their email, phone number, or username—no bank details needed.",
          ),
          
    ],
  ),
),
 Container(
  width: 1500,
  height: 775,
  padding: const EdgeInsets.all(50),
  clipBehavior: Clip.antiAlias,
  decoration: const BoxDecoration(color: Colors.transparent),
  child: const Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    SquareImageDesktop(
            imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img9.png",
            title: "Universal Accessibility",
            description:
                "No matter where you are, LigaPay is available for anyone, anywhere.",
          ),
           const SizedBox(
                         
                          width: 50,
                        ),
          SquareImageDesktop(
            imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img10.png",
            title: "Advanced Security",
            description:
                "Your transactions are protected with top-notch encryption, ensuring peace of mind every step of the way.",
          ),
          
    ],
  ),
),
              FooterDesktopCard(
                backgroundImage:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img1.png',
                title: 'LigaPay Business Account',
                subtitle:
                    'The smart choice for businesses that demand speed, security, and scalability.',
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
