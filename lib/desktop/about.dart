import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600; // Define here

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle button press here
            print("Button Pressed");

            // Navigate to the contact page using GoRouter
            context.go('/');
          },
        ),
        title: const Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              _buildParagraph(
                'Headquartered in Memphis, Tennessee, LigaPay is set to redefine the payment processing landscape across the United States with affordable, cutting-edge solutions for individuals and businesses. Memphis, a city rapidly gaining recognition as a burgeoning tech hub in the South, provides an ideal foundation for our mission to revolutionize financial transactions. With its innovative ecosystem, strategic location, and collaborative community, the city empowers us to deliver exceptional value and innovation.',
                context,
              ),
              SizedBox(height: isSmallScreen ? 20 : 30),
              _buildParagraph(
                'Specializing in person-to-person payments, business-to-business transactions, and international remittances, LigaPay is committed to delivering competitive services at rates significantly lower than industry norms. Our goal is simple: to make financial transactions seamless, efficient, and reliable, all while offering the most cost-effective alternative to traditional payment providers.',
                context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildParagraph(String text, BuildContext context) {
  final isSmallScreen = MediaQuery.of(context).size.width < 600;

  return RichText(
    textAlign: TextAlign.justify,
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontSize: isSmallScreen ? 16.0 : 18.0,
            height: 1.5,
          ),
      children: _processText(text),
    ),
  );
}

List<TextSpan> _processText(String text) {
  List<TextSpan> spans = [];
  final parts = text.split('LigaPay');

  for (int i = 0; i < parts.length; i++) {
    spans.add(TextSpan(text: parts[i]));
    if (i != parts.length - 1) {
      spans.add(
        const TextSpan(
          text: 'LigaPay',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      );
    }
  }

  return spans;
}
