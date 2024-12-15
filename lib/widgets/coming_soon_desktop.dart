import 'package:flutter/material.dart';


class ComingSoonDesktop extends StatelessWidget {
  final String backgroundImageUrl;
  final String title;
  final String subtitle;
  

  const ComingSoonDesktop({
    Key? key,
    required this.backgroundImageUrl,
    required this.title,
    required this.subtitle,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Container(
          width: double.infinity,
          height: 1400,
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
           // padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
            decoration: const BoxDecoration(
                // color: Colors.black.withOpacity(0.3),
                ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              
                const SizedBox(height: 300),
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
