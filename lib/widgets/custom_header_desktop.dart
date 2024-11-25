import 'package:flutter/material.dart';

class CustomHeaderDesktop extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;
  final TextStyle? textStyle;

  const CustomHeaderDesktop({
    Key? key,
    required this.title,
    this.width = 1497,
    this.height = 285,
    this.padding = const EdgeInsets.symmetric(horizontal: 200, vertical: 50),
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 639,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: textStyle ??
                  const TextStyle(
                    color: Color(0xFF010101),
                    fontSize: 96,
                    fontFamily: 'Utendo',
                    fontWeight: FontWeight.w600,
                    height: 0.01,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
