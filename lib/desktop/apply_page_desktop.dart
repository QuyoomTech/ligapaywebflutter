import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ligapay/widgets/apply_page_desktop_widget.dart';




class ApplyDesktopPage extends StatelessWidget {
  const ApplyDesktopPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle button press here
            print("Button Pressed");

            // Navigate to the contact page using GoRouter
            context.go('/');
          },
        ),
        title: const Text('Apply Now'),
      ),
      body: const SingleChildScrollView(
       // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ApplyPageDesktopWidget(
          backgroundImageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb7.png",
          title: "Join LigaPay team",
          subtitle: "Welcome to Ligapay.Here, you can break free of bureaucracy, discover your spark, and bring creative ideas to life or",
         
        ),
          ],
        ),
      ),
    );
  }
}
