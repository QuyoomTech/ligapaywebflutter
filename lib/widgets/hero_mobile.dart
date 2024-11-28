import 'package:flutter/material.dart';
import 'package:ligapay/widgets/mobile_nav_header.dart';


class HeroMobile extends StatelessWidget {
  final String backgroundImageUrl;
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const HeroMobile({
    Key? key,
    required this.backgroundImageUrl,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Container(
          width: double.infinity,
          height: 706, // Reduced height for mobile
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(backgroundImageUrl),
              fit: BoxFit.cover, // Use cover for better scaling on small screens
            ),
          ),
        ),
        // Black overlay and centered content
        Positioned.fill(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10), // Reduced padding for mobile
           // color: Colors.black.withOpacity(0.4), // Semi-transparent overlay
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title
                const MobileNavHeader(), 
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24, // Smaller font size for mobile
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Utendo',
                  ),
                ),
                const SizedBox(height: 10), // Reduced spacing
                // Subtitle
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14, // Smaller font size for mobile
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Utendo',
                  ),
                ),
                const SizedBox(height: 30), // Reduced spacing
                // Button
                GestureDetector(
                  onTap: onButtonPressed,
                  child: Container(
                    width: double.infinity, // Full width for mobile
                    height: 50, // Reduced button height
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16, // Smaller font size for mobile
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Utendo',
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
    );
  }
}
