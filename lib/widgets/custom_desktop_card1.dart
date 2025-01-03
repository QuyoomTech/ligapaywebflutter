import 'package:flutter/material.dart';

class CustomDesktopCard1 extends StatelessWidget {
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

  const CustomDesktopCard1({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.titleStyle,
    this.descriptionStyle,
    this.width = 1500,
    this.height = 728,
    this.padding = 50,
    this.imageWidth = 675,
    this.imageHeight = 675,
    this.spacing = 50,
    this.descriptionMaxLines = 6,
    this.titleMaxLines = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center ,
        children: [
          Container(
            width: imageWidth,
            height: height - padding * 2,
            padding: EdgeInsets.symmetric(vertical: padding),
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    title,
                    style: titleStyle ??
                        const TextStyle(
                          color: Color(0xFF010101),
                          fontSize: 50,
                          fontFamily: 'Utendo',
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                    maxLines: titleMaxLines,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 23),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    description,
                    style: descriptionStyle ??
                        const TextStyle(
                          color: Color(0xFF888888),
                          fontSize: 24,
                          fontFamily: 'Utendo',
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                    maxLines: descriptionMaxLines,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
         Expanded(
        child: Container(
          height: 425,
         // decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
        ),
      ),
          Container(
            width: imageWidth,
            height: imageHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
