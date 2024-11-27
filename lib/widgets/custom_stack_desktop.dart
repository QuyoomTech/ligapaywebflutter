import 'package:flutter/material.dart';

class CustomStackHeightSquareImageDesktop extends StatelessWidget {
  final double customStackHeight;
  final String imageUrl;
  final String title;
  final String description;

  const CustomStackHeightSquareImageDesktop({
    Key? key,
    required this.customStackHeight,
    required this.imageUrl,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 675, // Maintain the width defined in the original widget
      height: customStackHeight,
      child: Stack(
        children: [
          // Recreate the container structure with custom height
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
