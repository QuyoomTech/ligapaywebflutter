import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
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
        title: Text('Terms and Conditions'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terms and Conditions',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 8),
            Text(
              'Effective Date: December 15, 2024',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 16),
            buildSectionTitle(context, 'Welcome to LigaPay!'),
            buildParagraph(
              context,
              'These Terms and Conditions ("Terms") govern your use of our services, '
              'including person-to-person payments, business-to-business payments, '
              'and remittance services ("Services"). By accessing or using LigaPay’s platform, '
              'mobile app, website, or any related services (collectively, "Platform"), you agree to be bound by these Terms. '
              'If you do not agree to these Terms, do not use the Platform or Services.',
            ),
            buildParagraph(
              context,
              'Please read these Terms carefully. In these Terms, “LigaPay,” “we,” “our,” and “us” refer to the company offering the services, '
              'while “you” or “your” refers to the user of the Platform.',
            ),
            SizedBox(height: 16),
            buildSectionTitle(context, '1. Introduction'),
            buildParagraph(
              context,
              'LigaPay is a financial technology company offering services to enable '
              'person-to-person (P2P) payments, business-to-business (B2B) payments, and remittance services to users located in the '
              'United States and internationally. We aim to provide fast, secure, and cost-effective financial transactions through our Platform.',
            ),
            SizedBox(height: 16),
            buildSectionTitle(context, '2. Eligibility'),
            buildParagraph(
              context,
              'You must be at least 18 years old and a legal resident of the United States to use the Services. '
              'If you are accessing our services from a country outside the United States, you confirm that your use of the Platform '
              'complies with applicable local laws and regulations.',
            ),
            buildBulletPoints(context, [
              'You are at least 18 years of age.',
              'You are not prohibited from using financial services under U.S. or international law.',
              'All the information you provide to LigaPay is accurate, complete, and current.',
            ]),
            SizedBox(height: 16),
            buildSectionTitle(context, '3. Services Provided'),
            buildBulletPoints(context, [
              'Person-to-Person Payments (P2P Payments): Users can transfer funds to other individuals using the LigaPay platform, whether domestically or internationally.',
              'Business-to-Business Payments (B2B Payments): Businesses can use LigaPay to send and receive payments for goods and services, including international transactions.',
              'Remittance Services: Users can send money across borders to family and friends through our platform, facilitating international remittance services.',
            ]),
            SizedBox(height: 16),
            // Add more sections as required using similar patterns
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }

  Widget buildParagraph(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.justify,
    );
  }

  Widget buildBulletPoints(BuildContext context, List<String> points) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: points.map((point) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: Theme.of(context).textTheme.bodyMedium),
            Expanded(
              child: Text(
                point,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
