import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ligapay/widgets/waitinglist_ui_mobile.dart';

class  WaitinglistPageMobile extends StatelessWidget {
  const  WaitinglistPageMobile({super.key});



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
        title: const Text('Waiting list'),
      ),
      body: const SingleChildScrollView(
       // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           WaitingListUIMobile(
          backgroundImageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lc1.png",
          title: "Unlock benefits only available to early users",
          subtitle: "Don’t miss out! Join the waiting list today and be part of the revolution.",
         
        ),
          ],
        ),
      ),
    );
  }
}
