import 'package:flutter/material.dart';

class FooterDesktopCard extends StatelessWidget {
  final String backgroundImage;
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const FooterDesktopCard({
    Key? key,
    required this.backgroundImage,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1500,
      height: 750,
      padding: const EdgeInsets.all(50),
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
         mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 1400,
            height: 650,
            child: Stack(
              children: [
                // Background Image
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 1400,
                    height: 650,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage(backgroundImage),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                // Overlay and Content
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 1400,
                    height: 650,
                    padding: const EdgeInsets.all(50),
                    decoration: ShapeDecoration(
                      //color: Colors.black.withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Title
                        Container(
                          width: 806,
                          height: 184,
                          child: Text(
                            title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 96,
                              fontFamily: 'Utendo',
                              fontWeight: FontWeight.w600,
                              height: 1.0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 28),
                        // Subtitle
                        SizedBox(
                          width: 916,
                          height: 35,
                          child: Text(
                            subtitle,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Utendo',
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),
                        ),
                        const SizedBox(height: 28),
                        // Button
                        GestureDetector(
                          onTap: onButtonPressed,
                          child: Container(
                            width: 284,
                            height: 60,
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            decoration: ShapeDecoration(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                buttonText,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Utendo',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
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
        ],
      ),
    );
  }
}
