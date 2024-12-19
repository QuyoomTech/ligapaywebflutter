import 'package:flutter/material.dart';

import 'package:ligapay/widgets/waitinglist_ui_desktop.dart';

class Jobslist extends StatelessWidget {
  const Jobslist({super.key});



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
          title: "Join the Ligapay Team",
          subtitle: "Send your resume on apply@ligapay.com",
         
        ),
          ],
        ),
      ),
    );
  }
}
