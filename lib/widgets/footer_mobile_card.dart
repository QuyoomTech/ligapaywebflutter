import 'package:flutter/material.dart';

class MobileFooterCard extends StatelessWidget {
  final String imageUrl;
  final String titleText;
  final String descriptionText;
  final String buttonText;
  final VoidCallback? onButtonPressed;

  const MobileFooterCard({
    Key? key,
    required this.imageUrl,
    required this.titleText,
    required this.descriptionText,
    required this.buttonText,
    this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Container(
          width: 324,
          height: 514,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        
          child: Padding(
  padding: const EdgeInsets.all(16.0), // Add 16 pixels of padding on all sides
  child: Column(
    children: [
      const SizedBox(height: 50),
      Text(
        titleText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Utendo', // Make sure it's in pubspec.yaml
          fontWeight: FontWeight.w600,
          height: 1.03,
        ),
      ),
      const SizedBox(height: 20), // Add spacing between widgets
      Text(
        descriptionText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 18,
          fontFamily: 'Utendo',
          fontWeight: FontWeight.w400,
          height: 1,
        ),
      ),
      const SizedBox(height: 60), // Add spacing between widgets
      GestureDetector(
        onTap: onButtonPressed,
        child: Container(
          width: 248,
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
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
                height: 1.23,
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
