import 'package:flutter/material.dart';
import 'package:ligapay/desktop/contact_page.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/hero_desktop.dart';


// ignore: use_key_in_widget_constructors
class DesktopCareersPage extends StatelessWidget {
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
              
              Container(
  width: 1500,
  height: 675,
  padding: const EdgeInsets.all(50),
  child: Row(
    children: [
      // Image Container
      Container(
        width: 763,
        height: 575,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lc2.png"),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
        ),
      ),
      // Content Container
      Expanded(
        child: Container(
          height: double.infinity,
          padding: const EdgeInsets.all(50),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              const Text(
                'Ready to join today?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w500,
                  height: 1.2, // Adjusted for better spacing
                ),
              ),
              const SizedBox(height: 10),
              // Description
              const Text(
                'Ligapay is a community of amazing people who change the face of the fintech world of tomorrow. Apply now!',
                style: TextStyle(
                  color: Color(0xFF898989),
                  fontSize: 24,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w500,
                  height: 1.5, // Improved readability
                ),
              ),
              const SizedBox(height: 20),
              // Apply Now Button
              Container(
                width: 284,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Apply now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Utendo',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),


              
            
            
              CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
