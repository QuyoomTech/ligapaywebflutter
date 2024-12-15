import 'package:flutter/material.dart';

import 'package:ligapay/widgets/waitinglist_ui_desktop.dart';

class WaitinglistPage extends StatelessWidget {
  const WaitinglistPage({super.key});



  @override
  Widget build(BuildContext context) {
    return const Scaffold(


      body: SingleChildScrollView(
       // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           WaitingListUIDesktop(
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
