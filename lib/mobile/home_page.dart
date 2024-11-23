import 'package:flutter/material.dart';
class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

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
