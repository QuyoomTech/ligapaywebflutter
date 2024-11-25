// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/footer_desktop_card.dart';
import 'package:ligapay/widgets/responsive_header.dart';

class DesktopContactPage extends StatelessWidget {
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

              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Image(
                    image: const NetworkImage(
                        "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img1.png"),
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
                          "Welcome to ",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 96,
                            color: Color(0xffffffff),
                          ),
                        ),
                        const Text(
                          "LigaPay",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 96,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                       
                        const SizedBox(
                          height: 22,
                          width: 16,
                        ),
                        const Text(
      'Your All-in-One Financial Solution',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontFamily: 'Utendo',
        fontWeight: FontWeight.w400,
      ),
    ),
    const SizedBox(height: 10), // Adds 24 pixels of vertical space
    const Text(
      'Don’t miss out—secure your spot now!',
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
