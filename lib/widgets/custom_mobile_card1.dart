import 'package:flutter/material.dart';

class CustomMobileCard1 extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final TextStyle? titleStyle;
  final TextStyle? descriptionStyle;
  final double width;
  final double height;
  final double padding;
  final double imageWidth;
  final double imageHeight;
  final double spacing;
  final int descriptionMaxLines;
  final int titleMaxLines;

  const CustomMobileCard1({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.titleStyle,
    this.descriptionStyle,
    this.width = 360,
    this.height = 600,
    this.padding = 18,
    this.imageWidth = 324,
    this.imageHeight = 422,
    this.spacing = 10,
    this.descriptionMaxLines = 6,
    this.titleMaxLines = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              title,
              style: titleStyle ??
                  const TextStyle(
                    color: Color(0xFF010101),
                    fontSize: 32,
                    fontFamily: 'Utendo',
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                  ),
              maxLines: titleMaxLines,
              overflow: TextOverflow.ellipsis,
            ),
          ),
         // const SizedBox(height: 23),
          SizedBox(
            width: double.infinity,
            child: Text(
              description,
              style: descriptionStyle ??
                  const TextStyle(
                    color: Color(0xFF888888),
                    fontSize: 16,
                    fontFamily: 'Utendo',
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
              maxLines: descriptionMaxLines,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            width: imageWidth,
            height: imageHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
