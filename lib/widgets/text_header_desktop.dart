import 'package:flutter/material.dart';

class TextHeaderDesktop extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;

  const TextHeaderDesktop({
    Key? key,
    required this.text,
    this.textStyle,
    this.width = 1500,
    this.height = 280,
   // this.padding = const EdgeInsets.all(150),
    this. padding =const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: textStyle ??
            const TextStyle(
              color: Color(0xFF010101),
              fontSize: 90,
              fontWeight: FontWeight.w600,
               height: 1.0,
            ),
      ),
    );
  }
}
