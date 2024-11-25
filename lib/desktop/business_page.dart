import 'package:flutter/material.dart';
import 'package:ligapay/desktop/contact_page.dart';
import 'package:ligapay/widgets/custom_desktop_card2.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/footer_desktop_card.dart';
import 'package:ligapay/widgets/responsive_header.dart';
import 'package:ligapay/widgets/custom_desktop_card1.dart';

// ignore: use_key_in_widget_constructors
class DesktopBusinessPage extends StatelessWidget {
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
                        "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb1.png"),
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
                          "Empower Your Business \n with LigaPay",
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
                          'Streamline your business transactions and take control of your finances with a smart, \n flexible payment platform that’s built to grow with you.',
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
              const CustomDesktopCard1(
               
  title: 'Fast Withdrawals',
  description: 'Access your funds quickly and efficiently, ensuring you have the cash flow needed to run your business smoothly.',
   imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb2.png',
  descriptionMaxLines: 6, // Show up to 6 lines, adjust as needed
),

           Container(
  width: 1500,
  height: 779,
  padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
  decoration: const BoxDecoration(color: Colors.white),
  child: Center(
    child: Container(
      width: 1400,
      height: 679,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
          image: NetworkImage("https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb3.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: 1400,
              height: 211,
              padding: const EdgeInsets.all(50),
              decoration: const BoxDecoration(
                color: Color(0x7F564F89),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(40),
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Accept Payments Seamlessly',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontFamily: 'Utendo',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Receive payments from clients with ease, whether they’re across the street or across the globe.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Utendo',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ),
),
 const CustomDesktopCard1(
               
  title: 'Share Payment Links Instantly',
  description: 'Make it simple for your clients to pay—just send them a link, and they can complete the payment in moments.',
   imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb4.png?width=567&height=594',
  descriptionMaxLines: 6, // Show up to 6 lines, adjust as needed
),
 const CustomDesktopCard2(
               
  title: 'Share Payment Links Instantly',
  description: 'Make it simple for your clients to pay—just send them a link, and they can complete the payment in moments.',
   imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb5.png?width=200&height=200',
  descriptionMaxLines: 6, // Show up to 6 lines, adjust as needed
),
 const CustomDesktopCard1(
               
  title: 'Manage Risk with Confidence',
  description: 'Built-in risk management tools help safeguard your business, keeping your transactions secure and your peace of mind intact.',
   imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lp6.png',
  descriptionMaxLines: 6, // Show up to 6 lines, adjust as needed
),
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
