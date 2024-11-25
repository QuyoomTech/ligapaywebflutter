import 'dart:core';
import 'package:flutter/material.dart';
import 'package:ligapay/desktop/contact_page.dart';
import 'package:ligapay/widgets/custom_desktop_card2.dart';
import 'package:ligapay/widgets/custom_header_desktop.dart';
import 'package:ligapay/widgets/footer_desktop_card.dart';
import 'package:ligapay/widgets/responsive_header.dart';
import 'package:ligapay/widgets/custom_footer.dart';

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
                          "Welcome to \n LigaPay ",
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
                          'Your All-in-One Financial Solution',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Utendo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                            height: 10), // Adds 24 pixels of vertical space
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
              const CustomDesktopCard2(
                title: 'Seamless Payments, Anytime, Anywhere.',
                description:
                    'LigaPay makes payments effortless and secure, whether you are transferring money, paying for services, handling business payments, or managing finances. Available 24/7 worldwide, LigaPay offers seamless, hassle-free transactions anytime, anywhere, with just the touch of a button.',
                imageUrl:
                    'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img2.png',
                descriptionMaxLines: 6,
                titleMaxLines: 6, // Show up to 6 lines, adjust as needed
              ),
             
              CustomHeaderDesktop(
            title: 'Why LigaPay?',
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
