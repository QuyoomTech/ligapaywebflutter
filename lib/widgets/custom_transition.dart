import 'package:flutter/material.dart';

class CustomPageTransition extends PageRouteBuilder {
  final Widget page;

  CustomPageTransition({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // No transition animation
            return child;
          },
        );
}