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
    return Stack(
      children: [
        // Background image
        Container(
          width: double.infinity,
          height: 842,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(backgroundImageUrl),
              fit: BoxFit.fill,
            ),
          ),
        ),
        // Black overlay and centered content
        Center(
          child: Container(
            width: double.infinity,
            height: 842,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            decoration: const BoxDecoration(
                // color: Colors.black.withOpacity(0.3),
                ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ResponsiveHeader(),
                const SizedBox(height: 150),
                //
                Flexible(
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: _getResponsiveFontSize(
                            context, 30, 60, 90), // Dynamic font size
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10), // Add some spacing if needed
                // Subtitle Text
                Flexible(
                  child: Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: _getResponsiveFontSize(
                          context, 16, 20, 24), // Dynamic font size
                      fontFamily: 'Utendo',
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                MouseRegion(
  cursor: SystemMouseCursors.click, // Changes cursor to hand on hover
  child: GestureDetector(
    onTap: onButtonPressed,
    child: Container(
      width: 284,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Center(
        child: Text(
          buttonText,
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
),

              ],
            ),
          ),
        ),
      ],
    );
  }
}

double _getResponsiveFontSize(BuildContext context, double mobileSize,
    double tabletSize, double desktopSize) {
  double screenWidth = MediaQuery.of(context).size.width;

  if (screenWidth < 600) {
    // Mobile
    return mobileSize;
  } else if (screenWidth < 1200) {
    // Tablet
    return tabletSize;
  } else {
    // Desktop
    return desktopSize;
  }
}

