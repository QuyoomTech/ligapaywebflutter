import 'package:flutter/material.dart';
import 'package:ligapay/desktop/contact_page.dart';
import 'package:ligapay/widgets/custom_footer.dart';

import 'package:ligapay/widgets/responsive_header.dart';

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

              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Image(
                    image: const NetworkImage(
                        "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lc1.png"),
                    height: 800,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.dstOver, // or BlendMode.srcOver
                    color: Colors.black
                        .withOpacity(0.2), // adjust the opacity value
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 18, 50, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                         const ResponsiveHeader(),
                        const SizedBox(
                          height: 120,
                          width: 16,
                        ),
                        const Text(
                          "Join us as we improve \n financial wellness for millions",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 96,
                            color: Color(0xffffffff),
                          ),
                        ),
                       
                       
                        const SizedBox(
                          height: 22,
                          width: 16,
                        ),
                        const Text(
      "Welcome to LigaPay.\n We are an innovative fintech company . Here, you can break free \n of bureaucracy, discover your spark, and bring creative ideas to life",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontFamily: 'Utendo',
        fontWeight: FontWeight.w400,
      ),
    ),
   
                        const SizedBox(
                          height: 60,
                          width: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DesktopContactPage()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 324,
                            height: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Join the waiting list",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
