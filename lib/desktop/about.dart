import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          // Handle button press here
          print("Button Pressed");

          // Navigate to the contact page using GoRouter
          context.go('/');
        },
      ),
      title: Text('About Us'),
    ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Us - LigaPay",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "At LigaPay, we are committed to transforming how you manage your finances. "
              "Our platform brings together advanced technology and user-friendly solutions to "
              "ensure seamless financial interactions. Whether you’re sending money, managing business finances, "
              "investing, or exploring global remittance options, LigaPay is here to support your needs securely and efficiently.",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 16),
            Text(
              "Our mission is to create a future where financial tools are accessible to everyone, empowering individuals and businesses to thrive. "
              "With a focus on innovation, security, and transparency, we are your trusted partner in financial growth.",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
