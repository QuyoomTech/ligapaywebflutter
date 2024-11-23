import 'package:flutter/material.dart';

class MobileRemitancePage extends StatelessWidget {
  const MobileRemitancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('LigaPay - Mobile'),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: const Text(
          'Welcome to LigaPay - Mobile Home Page',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
