import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MobilePersonalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LigaPay - Mobile'),
      ),
      body: const Center(
        child: Text(
          'Welcome to LigaPay - Mobile Home Page',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
