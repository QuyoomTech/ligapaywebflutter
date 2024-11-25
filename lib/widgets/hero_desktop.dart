import 'package:flutter/material.dart';
import 'package:ligapay/widgets/responsive_header.dart';

class HeroDesktop extends StatelessWidget {
  final String backgroundImageUrl;
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const HeroDesktop({
    Key? key,
    required this.backgroundImageUrl,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1500,
      height: 842,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 1500,
              height: 842,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(backgroundImageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 1500,
              height: 842,
              //padding: const EdgeInsets.symmetric(horizontal: 50),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ResponsiveHeader(),
                  Container(width: 554, height: 95),
                  const SizedBox(height: 45),
                  SizedBox(
                    width: 758,
                    height: 200,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 90,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 1.01,
                      ),
                    ),
                  ),
                  const SizedBox(height: 45),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Utendo',
                      fontWeight: FontWeight.w400,
                      height: 2.05,
                    ),
                  ),
                  const SizedBox(height: 45),
                  GestureDetector(
                    onTap: onButtonPressed,
                    child: Container(
                      width: 284,
                      height: 60,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            buttonText,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Utendo',
                              fontWeight: FontWeight.w500,
                              height: 0.23,
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
        ],
      ),
    );
  }
}
