import 'dart:core';
import 'package:flutter/material.dart';
import 'package:ligapay/mobile/contact_page.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileBusinessPage extends StatelessWidget {
  const MobileBusinessPage({super.key});

  void _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: DefaultTextStyle(
        style: const TextStyle(fontFamily: 'Utendo'),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              //File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  ///***If you have exported images you must have to copy those images in assets/images directory.
                  Image(
                    image: const NetworkImage(
                        "https://images.pexels.com/photos/1448736/pexels-photo-1448736.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    height: 800,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.dstOver, // or BlendMode.srcOver
                    color: Colors.black
                        .withOpacity(0.2), // adjust the opacity value
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ///***If you have exported images you must have to copy those images in assets/images directory.
                            const Image(
                              image: AssetImage("assets/images/saathi.png"),
                              height: 50,
                              width: 90,
                              fit: BoxFit.fitWidth,
                            ),
                            const Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 16,
                                width: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                const url =
                                    'https://api.whatsapp.com/send?phone=918491030785'; // Replace with your desired URL
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.zero,
                                width: 130,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(25.0),
                                  border: Border.all(
                                      color: const Color(0xffb4f000), width: 1),
                                ),
                                child: const Align(
                                  alignment: Alignment(0.0, 0.0),
                                  child: Text(
                                    "Contact us",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 16,
                                      color: Color(0xffb4f000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 380,
                          width: 16,
                        ),
                        const Text(
                          "Explore heaven with Saathi Tour and Travels on earth",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 36,
                            color: Color(0xffffffff),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                          width: 16,
                        ),
                        const Text(
                          "“Your happiness is our promise”",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                            color: Color(0xffffffff),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                          width: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MobileContactPage()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 324,
                            height: 60,
                            decoration: BoxDecoration(
                              color: const Color(0xffb4f000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Plan my trip",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20,
                                  color: Color(0xff000000),
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
              ],
          ),
           
        ),
      ),
    );
  }
}
