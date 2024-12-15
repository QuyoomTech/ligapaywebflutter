import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/custom_mobile_card1.dart';
import 'package:ligapay/widgets/custom_mobile_card3.dart';
import 'package:ligapay/widgets/custom_stack_mobile.dart';

import 'package:ligapay/widgets/expandable_widget_mobile.dart';
import 'package:ligapay/widgets/footer_mobile_card.dart';

import 'package:ligapay/widgets/hero_mobile.dart';

import 'package:ligapay/widgets/text_header_mobile.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});
// Adjust the import path

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
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img1.png',
                title: 'Welcome to Ligapay',
                subtitle:
                    'Your All-in-One Financial Solution \n Don’t miss out—secure your spot now!',
                buttonText: 'Join the waiting list',
                onButtonPressed: () {
  // Handle button press here
  print("Button Pressed");

  // Navigate to the contact page using GoRouter
  context.go('/waitinglist');
},

              ),
               const SizedBox(height: 16),
              
              const CustomMobileCard1(
                title: 'Seamless Payments, Anytime, Anywhere.',
                description:
                    'LigaPay makes payments effortless and secure, whether you are transferring money, paying for services, handling business payments, or managing finances. Available 24/7 worldwide, LigaPay offers seamless, hassle-free transactions anytime, anywhere, with just the touch of a button.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img2.png',
                descriptionMaxLines: 6,
                imageHeight: 280, // Custom height for the image
                imageWidth: 324, // Show up to 6 lines, adjust as needed
              ),

              const TextHeaderMobile(
                text: 'Why LigaPay?',
              ), 
              const CustomStackMobile(
                customStackHeight: 400,
               // Custom height for the image
                
                imageUrl:
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img3.png",
                
                title: "Global Wallet Access",
                description:
                    "Manage your USD wallet for personal or business use, accessible from anywhere in the world",
              ),
              const SizedBox(height: 16),
              const CustomStackMobile(
                customStackHeight: 400,
                imageUrl:
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/imgm4.png",
                title: "Effortless Money Transfers",
                description:
                    "Send money to anyone using their email, phone number, or username—no bank details needed.",
              ),
            
        CustomMobileCard3(
  title: 'Seamless Payment Collection',
  description: 'Accept payments with a unique link or QR code, tailored for each transaction.',
  buttonText: 'Collect now',
  imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img5.png',
  onButtonPressed: () {
  // Handle button press here
  print("Button Pressed");

  // Navigate to the contact page using GoRouter
  context.go('/comingsoon');
},
),
              const CustomStackMobile(
                customStackHeight: 324,
                imageUrl:
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img6.png",
                title: "Multi-Currency Transfers",
                description:
                    "Transfer money to any bank account globally in any currency, with instant conversion.",
              ),
              const SizedBox(height: 16),
              const CustomStackMobile(
                customStackHeight: 400,
                imageUrl:
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/imgm7.png",
                title: "Linked Banking",
                description:
                    "Withdraw your funds directly to your local bank account, no matter where you are.",
              ),
              const SizedBox(height: 16),
              CustomMobileCard3(
  title: 'Low-Cost Transactions',
  description: 'Enjoy a minimal transaction fee of just 0.5%, with your transactions for the first 3 months free.',
  buttonText: 'Claim offer now',
  imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img8.png',
   onButtonPressed: () {
  // Handle button press here
  print("Button Pressed");

  // Navigate to the contact page using GoRouter
  context.go('/comingsoon');
},
),
              const CustomStackMobile(
                customStackHeight: 400,
                imageUrl:
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img9.png",
                title: "Universal Accessibility",
                description:
                    "No matter where you are, LigaPay is available for anyone, anywhere.",
              ),
              const SizedBox(height: 16),
              const CustomStackMobile(
                customStackHeight: 400,
                imageUrl:
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img10.png",
                title: "Advanced Security",
                description:
                    "Your transactions are protected with top-notch encryption, ensuring peace of mind every step of the way.",
              ),
              const SizedBox(height: 16),
               const TextHeaderMobile(
                text: 'Your money stay \n safe',
              ),
              const CustomStackMobile(
                customStackHeight: 400,
                imageUrl:
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img11.png",
                title: "Numberless Card Design",
                description:
                    "Your numberless LigaPay card is 100% secure. Your info is safe in case you lose it.",
              ),
              const SizedBox(height: 16),
              const CustomStackMobile(
                customStackHeight: 400,
                imageUrl:
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img12.png",
                title: "Encryption",
                description:
                    "We protect your funds and sensitive personal data with encryption in-flight and at-rest.",
              ),
              const SizedBox(height: 16),
              const CustomStackMobile(
                customStackHeight:  324,
                imageUrl:
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/imgm13.png",
                title: "Biometric access",
                description:
                    "Your transactions are protected with top-notch encryption, ensuring peace of mind every step of the way.",
              ),
              const SizedBox(height: 16),
             
const TextHeaderMobile(
                text: 'Frequently Asked Questions',
              ), 
const ExpandableWidgetMobile(
            title: "1. What is LigaPay ?",
            description:
                "LigaPay is a universal USD wallet designed for individuals, businesses, and enterprises. It allows you to manage and transfer money globally with ease, offering features like instant currency conversion, secure transactions, and flexible payment options.",
          ),
          const ExpandableWidgetMobile(
            title: "2. How can I add money to my LigaPay wallet?",
            description:
                "You can easily add funds to your LigaPay wallet using any debit or credit card. Simply link your card, and your wallet will be topped up instantly.",
          ),
          const ExpandableWidgetMobile(
            title: "3. Can I send money internationally with LigaPay?",
            description: "Yes, you can send money to anyone around the world using their email, phone number, or username. LigaPay supports international transfers to any bank account in any currency.",
          ),
           const ExpandableWidgetMobile(
            title: "4. How does LigaPay handle currency conversion?",
            description: "LigaPay offers instant currency conversion with real-time rates, ensuring you get the best possible value when transferring money internationally.",
          ),
 const ExpandableWidgetMobile(
            title: "5. What are the transaction fees?",
            description: "LigaPay charges a low transaction fee of just 0.5%. Plus, the first 100,000 users will enjoy their first 20 transactions free of charge.",
          ),
 const ExpandableWidgetMobile(
            title: "6. Is LigaPay secure?",
            description: "Absolutely. LigaPay uses advanced encryption technology to protect your financial data and ensure that all transactions are secure.",
          ),
 const ExpandableWidgetMobile(
            title: "7. How do I receive payments with LigaPay?",
            description: "You can receive payments using a unique link or QR code generated for each transaction. You can also receive money directly through your email, phone number, or username.",
          ),
 const ExpandableWidgetMobile(
            title: "8. Can I withdraw money from my LigaPay wallet to my local bank account?",
            description: "Yes, you can link your local bank account to LigaPay and withdraw your funds at any time. LigaPay supports withdrawals to any bank, globally.",
          ),
 const ExpandableWidgetMobile(
            title: "9. Do I need a payment gateway to use LigaPay?",
            description: "No, with LigaPay, there’s no need for an additional payment gateway. You can collect payments directly through our platform, anytime and anywhere.",
          ),
 const ExpandableWidgetMobile(
            title: "10. How do I join the waiting list?",
            description: "To join the LigaPay waiting list, simply sign up through our website. The first 100,000 users will get the added benefit of 20 free transactions!",
          ),
              MobileFooterCard(
                imageUrl:
                    "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/imgm14.png",
                titleText: "Join the Future of Finance",
                descriptionText:
                    "Ready to experience a new level of \n financial freedom? Join our waiting list  \n today and be among the first to enjoy the  \n benefits of LigaPay. Don’t miss  \n out—secure your spot now!",
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

