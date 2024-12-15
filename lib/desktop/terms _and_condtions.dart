import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
          // Handle button press here

          // Navigate to the contact page using GoRouter
          context.go('/');
        },
        ),
        title: const Text('Terms and Conditions'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
        width: double.infinity,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Terms and Conditions\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: ' \n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'Effective Date: December 15, 2024\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '\nWelcome to LigaPay! These Terms and Conditions ("Terms") govern your use of our services, including person-to-person payments, business-to-business payments, and remittance services ("Services"). By accessing or using LigaPay’s platform, mobile app, website, or any related services (collectively, "Platform"), you agree to be bound by these Terms. If you do not agree to these Terms, do not use the Platform or Services.\nPlease read these Terms carefully. In these Terms, “LigaPay,” “we,” “our,” and “us” refer to the company offering the services, while “you” or “your” refers to the user of the Platform.\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '1. Introduction\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'LigaPay is a financial technology company offering services to enable person-to-person (P2P) payments, business-to-business (B2B) payments, and remittance services to users located in the United States and internationally. We aim to provide fast, secure, and cost-effective financial transactions through our Platform.\n \n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '2. Eligibility\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'You must be at least 18 years old and a legal resident of the United States to use the Services. If you are accessing our services from a country outside the United States, you confirm that your use of the Platform complies with applicable local laws and regulations.\nBy using the Platform, you represent and warrant that:\n·         You are at least 18 years of age.\n·         You are not prohibited from using financial services under U.S. or international law.\n·         All the information you provide to LigaPay is accurate, complete, and current.\n \n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '3. Services Provided\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'LigaPay offers the following Services:\n·         Person-to-Person Payments (P2P Payments): Users can transfer funds to other individuals using the LigaPay platform, whether domestically or internationally.\n·         Business-to-Business Payments (B2B Payments): Businesses can use LigaPay to send and receive payments for goods and services, including international transactions.\n·         Remittance Services: Users can send money across borders to family and friends through our platform, facilitating international remittance services.\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: ' 4. Account Registration and Security\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'To use the Services, you must create an account with LigaPay. You will be required to provide certain personal information, including but not limited to your name, address, date of birth, email, and other identifying information.\nYou agree to:\n·         Provide accurate, truthful, and complete information when registering for an account.\n·         Maintain the confidentiality of your account login details, including your username and password.\n·         Notify LigaPay immediately of any unauthorized use of your account or security breach.\n·         You are responsible for all activity under your account, even if you did not authorize it.\n \n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '5. Fees and Charges\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'LigaPay charges fees for certain transactions. The applicable fees will be clearly outlined during the transaction process on the Platform. Fees may vary based on factors such as the type of transaction (P2P, B2B, or remittance), the payment method used, and the destination of the funds.\nBy using the Services, you agree to pay all applicable fees. LigaPay reserves the right to modify the fees at any time. We will notify you of any changes to our fee structure, which will take effect after a reasonable period.\n \n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '6. User Obligations and Prohibited Activities\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'By using the Services, you agree not to engage in the following activities:\n·         Fraud or Misrepresentation: You must not use the platform to engage in fraudulent activities or misrepresent your identity or the nature of the transaction.\n·         Money Laundering or Terrorist Financing: You must not use the platform to engage in any illegal activities, including money laundering or financing terrorism.\n·         Prohibited Transactions: You may not use the platform to send or receive payments for prohibited items, services, or activities, as determined by applicable law and LigaPay’s internal policies.\n·         Harmful Content: You must not use the platform to distribute malware, viruses, or other harmful software.\nLigaPay reserves the right to suspend or terminate your account if we suspect any of these activities or violations.\n \n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '7. Transaction Limits\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'LigaPay may impose transaction limits for certain users, depending on factors such as account verification, usage patterns, and applicable regulations. We may periodically review and adjust these limits based on your account history, security considerations, and regulatory requirements.\n \n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '8. Funds Availability and Processing Times\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'Funds transferred via LigaPay are subject to processing times, which may vary depending on the type of transaction, payment method, and destination. Typically:\n·         Domestic P2P transfers may be processed within minutes to a few hours.\n·         International remittances may take 1–3 business days, depending on the destination country and financial institution.\n·         B2B payments may take longer, depending on the parties involved and the transaction amount.\n·         You acknowledge that LigaPay is not responsible for delays caused by external parties, such as banks or third-party processors.\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: ' 9. Account Termination\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'You may close your account at any time by following the instructions on the Platform. However, you are responsible for any outstanding balances or fees that may be due at the time of account closure.\nLigaPay reserves the right to suspend or terminate your account, with or without cause, including if:\n·         We detect any unauthorized use of your account or violation of these Terms.\n·         We are required to do so by law or regulatory authorities.\n·         We suspect that you are engaging in illegal activities or financial fraud.\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '10. Privacy and Data Protection\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'Your privacy is important to us. By using our Services, you consent to the collection, use, and processing of your personal data in accordance with our Privacy Policy. We may share your data with third-party service providers and regulatory authorities as necessary to provide the Services and comply with legal requirements.\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '\n11. Dispute Resolution and Arbitration\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'Any disputes arising from or related to these Terms shall be resolved through binding arbitration, rather than in court. By agreeing to these Terms, you waive your right to a jury trial and agree that disputes will be resolved individually, without the use of class actions.\nArbitration will be conducted under the rules of the American Arbitration Association (AAA), and the location of arbitration will be in California. You may opt out of this arbitration agreement within 30 days of accepting these Terms by contacting us at ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'support@ligapay.com\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '\n12. Limitation of Liability\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'To the maximum extent permitted by law, LigaPay and its affiliates, officers, directors, employees, and agents shall not be liable for any indirect, incidental, special, or consequential damages arising from the use of the Services. Our total liability for any claims, losses, or damages related to these Terms shall be limited to the amount you paid to LigaPay for the Services in the 12 months preceding the claim.\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '13. Amendments to These Terms\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'LigaPay reserves the right to modify or update these Terms at any time. We will notify you of any material changes to the Terms through email or via the Platform. Continued use of the Services after the changes take effect will be considered your acceptance of the updated Terms.\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '14. Governing Law\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'These Terms are governed by the laws of the State of California, United States, without regard to its conflict of laws principles. Any legal action or proceeding under these Terms shall be brought exclusively in the courts located in San Francisco, California.\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '15. Contact Information\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'For any questions, concerns, or disputes regarding these Terms or the Services, you may contact us at:\nLigaPay (USA), Inc., Email: ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'support@ligapay.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '   \nBy using LigaPay Services, you acknowledge that you have read, understood, and agree to these Terms and Conditions.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      ),
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
