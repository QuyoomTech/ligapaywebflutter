import 'package:flutter/material.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/custom_mobile_card1.dart';
import 'package:ligapay/widgets/custom_stack_mobile.dart';
import 'package:ligapay/widgets/footer_mobile_card.dart';

import 'package:ligapay/widgets/hero_mobile.dart';
import 'package:ligapay/widgets/text_header_mobile.dart';
class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});
// Adjust the import path


       

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
               HeroMobile(
        backgroundImageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img1.png',
        title: 'Welcome to Ligapay',
        subtitle: 'Your All-in-One Financial Solution \n Don’t miss out—secure your spot now!',
        buttonText: 'Join the waiting list',
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
  description: 'Send money to anyone using their email, phone number, or username—choose whichever method suits you best.',
   imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lp2.png',
  descriptionMaxLines: 6, 
  imageHeight: 422, // Custom height for the image
  imageWidth: 324, // Show up to 6 lines, adjust as needed
),
 const CustomStackMobile(
     customStackHeight: 400,
            imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img9.png",
            title: "Global Wallet Access",
            description:
                "Manage your USD wallet for personal or business use, accessible from anywhere in the world",
          ),
           
const SizedBox(height: 18),
 const CustomStackMobile(
     customStackHeight: 400,
            imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img9.png",
            title: "Effortless Money Transfers",
            description:
                "Send money to anyone using their email, phone number, or username—no bank details needed.",
          ),
           
const SizedBox(height: 18),
 const CustomStackMobile(
     customStackHeight: 400,
            imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img9.png",
            title: "Multi-Currency Transfers",
            description:
                "Transfer money to any bank account globally in any currency, with instant conversion.",
          ),
           
const SizedBox(height: 18),
 const CustomStackMobile(
     customStackHeight: 400,
            imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img9.png",
            title: "Linked Banking",
            description:
                "Withdraw your funds directly to your local bank account, no matter where you are.",
          ),
           
const SizedBox(height: 18),
 const CustomStackMobile(
     customStackHeight: 400,
            imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img9.png",
            title: "Universal Accessibility",
            description:
                "No matter where you are, LigaPay is available for anyone, anywhere.",
          ),
           
const SizedBox(height: 18),
 const CustomStackMobile(
     customStackHeight: 400,
            imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img9.png",
            title: "Advanced Security",
            description:
                "Your transactions are protected with top-notch encryption, ensuring peace of mind every step of the way.",
          ),
           
const SizedBox(height: 18),
 const CustomStackMobile(
     customStackHeight: 400,
            imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img9.png",
            title: "Numberless Card Design",
            description:
                "Your numberless LigaPay card is 100% secure. Your info is safe in case you lose it.",
          ),
           
const SizedBox(height: 18),
 const CustomStackMobile(
     customStackHeight: 400,
            imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img9.png",
            title: "Encryption",
            description:
                "We protect your funds and sensitive personal data with encryption in-flight and at-rest.",
          ),
           
const SizedBox(height: 18),
 const CustomStackMobile(
     customStackHeight: 400,
            imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img9.png",
            title: "Biometric access",
            description:
                "Your transactions are protected with top-notch encryption, ensuring peace of mind every step of the way.",
          ),
           
const SizedBox(height: 18),

MobileFooterCard(
  imageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/imgm14.png",
  titleText: "Join the Future of Finance",
  descriptionText: "Ready to experience a new level of \n financial freedom? Join our waiting list  \n today and be among the first to enjoy the  \n benefits of LigaPay. Don’t miss  \n out—secure your spot now!",
  buttonText: "Join the waiting list",
  onButtonPressed: () {
    print("Button pressed!");
  },
),
const SizedBox(height: 18),
    CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}