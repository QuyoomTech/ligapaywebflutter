import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text('Privacy Policy'),
    ),
    body: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Privacy Policy',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: 8),
          Text(
            'Effective Date: December 15, 2024',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 16),
          Text(
            'At LigaPay, we are committed to protecting your privacy and ensuring that your personal and financial information is handled in a secure and responsible manner. This Privacy Policy outlines how we collect, use, store, and protect your information when you use our services, including person-to-person payments, business-to-business payments, and remittance services (collectively, the "Services").',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 12),
          Text(
            '1. Information We Collect',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: 8),
          Text(
            'We collect personal, financial, and technical information from you in order to provide our Services and comply with legal and regulatory requirements. This information may include:\n\n'
            '• Identity Information: Full name, date of birth, SSN, government-issued ID.\n'
            '• Contact Information: Address, email, phone.\n'
            '• Payment Information: Bank account details, credit card numbers.\n'
            '• Device and Usage Data: IP address, browser type, device details.\n'
            '• Cookies and Tracking Technologies.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 16),
          Text(
            '2. How We Use Your Information',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: 8),
          Text(
            'We use the information we collect for:\n\n'
            '• Providing and improving our services.\n'
            '• Verifying your identity to prevent fraud.\n'
            '• Sending transaction updates and notifications.\n'
            '• Complying with legal obligations.\n'
            '• Enhancing your user experience.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          // Add other sections as per the content.
          SizedBox(height: 12),
          Text(
            '10. Contact Us',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: 8),
          Text(
            'If you have any questions, concerns, or requests regarding this Privacy Policy or your personal data, please contact us at:\n\n'
            'LigaPay, Inc.\n'
            'Email: support@LigaPay.com',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 16),
          Text(
            'By using LigaPay’s Services, you acknowledge that you have read and understood this Privacy Policy and agree to the collection, use, and sharing of your information as described herein.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontStyle: FontStyle.italic,
                ),
          ),
        ],
      ),
    ),
  );
}
}
