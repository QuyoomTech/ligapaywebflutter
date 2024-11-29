import 'package:flutter/material.dart';

class TextHeaderMobile extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;

  const TextHeaderMobile({
    Key? key,
    required this.text,
    this.textStyle,
    this.width = 360,
    this.height = 200,
   // this.padding = const EdgeInsets.all(150),
    this. padding =const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
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
              fontSize: 32,
              fontWeight: FontWeight.w500,
               height: 1.0,
            ),
      ),
    );
  }
}
