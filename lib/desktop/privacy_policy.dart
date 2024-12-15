import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        title: const Text('Privacy Policy'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Privacy Policy\n\nEffective Date: December 15, 2024\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          'At LigaPay, we are committed to protecting your privacy and ensuring that your personal and financial information is handled in a secure and responsible manner. This Privacy Policy outlines how we collect, use, store, and protect your information when you use our services, including person-to-person payments, business-to-business payments, and remittance services (collectively, the "Services")\n\nBy using LigaPays platform, mobile app, website, or any other related services (collectively, "Platform"), you agree to the practices described in this Privacy Policy. If you do not agree with this Privacy Policy, please do not use our Services.\n\nPlease read this Privacy Policy carefully, as it explains how we collect, use, and protect your personal information and your rights regarding that information.\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '1. Information We Collect\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          'We collect personal, financial, and technical information from you in order to provide our Services and comply with legal and regulatory requirements.\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          'This information may include:\n\n Personal Information\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '·         Identity Information: Full name, date of birth, Social Security number (SSN) or tax identification number (TIN), government-issued identification (e.g., passport, driver’s license).\n·         Contact Information: Address, email address, phone number.\n·         Demographic Information: Gender, nationality, occupation, and other similar details.\n·         Payment Information: Bank account details, credit or debit card numbers, transaction history.\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: ' Transaction Information\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '·         Payment Data: Information related to payments you make or receive via our platform, including transaction amounts, dates, and payment methods.\n·         Business Information: For business accounts, we may collect company name, industry type, business address, tax information, and other business-related details. \n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: ' \nTechnical Information\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '·         Device and Usage Data: IP address, browser type, device type, operating system, device identifiers, and other technical details about how you access our Platform.\n·         Cookies and Tracking Technologies: We may use cookies, web beacons, and other tracking technologies to enhance your experience and gather analytics about how you use our \n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\nServices.\n\n 2. How We Use Your Information\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          'We use the information we collect for the following purposes:\n·         To Provide and Improve Our Services: To facilitate person-to-person payments, business-to-business payments, and remittance services, including processing your transactions, managing your account, and troubleshooting issues.\n·         To Verify Your Identity: To comply with regulatory requirements (such as Know Your Customer [KYC] and Anti-Money Laundering [AML] laws) and to prevent fraud or unauthorized transactions.\n·         To Communicate with You: To send you transaction updates, account notifications, service announcements, and marketing communications (if you have opted in to receive them).\n·         To Comply with Legal and Regulatory Obligations: To meet compliance requirements, respond to legal requests, and protect against fraud and financial crimes.\n·         To Enhance User Experience: To analyze user behavior, track performance, improve our website and app, and tailor our services to better meet your needs.\n \n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '3. How We Share Your Information\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          'We may share your information in the following situations:\n·         With Service Providers: We may share your information with trusted third-party service providers that help us deliver our services, such as payment processors, cloud storage providers, identity verification services, and customer support platforms. These service providers are obligated to maintain the confidentiality and security of your data.\n·         With Financial Institutions: In order to complete transactions, we may share your information with banks, payment processors, or other financial institutions involved in the transfer of funds.\n·         With Legal Authorities: We may disclose your information in response to a subpoena, court order, or other legal process, or when we believe in good faith that disclosure is necessary to comply with the law, protect our rights, or prevent fraud or harm.\n·         In Business Transfers: In the event of a merger, acquisition, sale of assets, or bankruptcy, your information may be transferred as part of the business transaction. We will notify you of any such transfer if it affects your personal data.\n·         With Your Consent: We may share your information with third parties when we have your explicit consent to do so.\n \n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '4. How We Protect Your Information\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          'We take the security of your personal information seriously and use industry-standard security measures to protect it. These include:\n·         Encryption: We use encryption to protect sensitive financial and personal data during transmission over the internet.\n·         Access Control: We restrict access to your personal and financial information to only those employees, contractors, or service providers who need access to perform their job functions.\n·         Data Storage: We store your information in secure servers located in data centers with physical, administrative, and technical safeguards.\nDespite these efforts, no method of transmission over the internet or electronic storage is 100% secure. While we strive to protect your information, we cannot guarantee absolute security.\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '5. Data Retention\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          'We retain your personal information only for as long as necessary to fulfill the purposes for which it was collected, including legal and regulatory requirements. After this period, we will securely delete or anonymize your personal data.\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '6. Your Rights and Choices\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          'As a user of LigaPay’s Services, you have the following rights regarding your personal data:\n·         Access: You have the right to request a copy of the personal information we hold about you.\n·         Correction: If any of your information is incorrect or incomplete, you can request that we update it.\n·         Deletion: You can request that we delete your personal data, subject to legal and contractual obligations.\n·         Opt-out of Marketing Communications: You may opt out of receiving marketing communications from us by following the unsubscribe instructions in any marketing email or by \ncontacting us directly.\n·         Data Portability: You can request to receive a copy of your data in a structured, commonly used, and machine-readable format.\nTo exercise any of these rights, please contact us at ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: 'support@LigaPay.com\n',
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
                      text: '\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '7. Cookies and Tracking Technologies\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          'We use cookies and similar technologies to enhance your experience on our Platform. Cookies are small files stored on your device that help us remember your preferences, improve our services, and analyze website usage.\nYou can manage your cookie preferences through your browser settings. However, disabling cookies may affect the functionality of our website and services.\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '\n8. Children’s Privacy\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          'LigaPay’s Services are not intended for children under the age of 13. We do not knowingly collect personal information from children. If we learn that we have collected information from a child under 13, we will take steps to delete that information. If you believe we may have information about a child under 13, please contact us at ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: 'support@LigaPay.com',
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
                      text: '.\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '9. Changes to This Privacy Policy\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          'We may update this Privacy Policy from time to time to reflect changes in our practices or legal obligations. We will post any updated policy on this page and update the “Effective Date” at the top of the policy. If we make significant changes, we will notify you via email or through our Platform. By continuing to use our Services after any changes to this Privacy Policy, you consent to those changes.\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '10. Contact Us\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          'If you have any questions, concerns, or requests regarding this Privacy Policy or your personal data, please contact us at:\nLigaPay (USA), Inc.; Email: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Utendo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: 'support@LigaPay.com\n',
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
                      text:
                          'By using LigaPay’s Services, you acknowledge that you have read and understood this Privacy Policy and agree to the collection, use, and sharing of your information as described herein.',
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
          ],
        ),
      ),
    );
  }
}
