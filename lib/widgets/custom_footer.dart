import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
void _launchUrl(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
class CustomFooter extends StatelessWidget {
  get context => null;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Determine padding based on screen size
    EdgeInsets padding = screenWidth > 600
        ? const EdgeInsets.all(50) // Desktop
        : const EdgeInsets.all(16); // Mobile

    return Column(
      children: [
        // Top Section
        Container(
          width: double.infinity,
          color: const Color(0xFF262626),
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              screenWidth > 600
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildColumn1(),
                        _buildColumn2(context),
                        _buildColumn3(context),
                        _buildColumn4(),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildColumn1(),
                        const SizedBox(height: 40),
                        _buildColumn2(context),
                        const SizedBox(height: 40),
                        _buildColumn3(context),
                         const SizedBox(height: 40),
                        _buildColumn4(),
                       
                      ],
                    ),
              const SizedBox(height: 50),
            ],
          ),
        ),
        // Bottom Section
        Container(
          width: double.infinity,
          height: 61,
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          decoration: const BoxDecoration(color: Colors.black),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '© LigaPay 2024',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildColumn1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'LigaPay',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Your All-in-One Financial Solution',
          style: TextStyle(
            color: Color(0xFF888888),
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          'Follow us on',
          style: TextStyle(
            color: Color(0xFF888888),
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 10),
       Row(
  children: [
    GestureDetector(
      onTap: () => _launchUrl('https://www.instagram.com/ligapay'),
      child: _buildSocialIcon(FontAwesomeIcons.instagram), // Instagram Icon
    ),
    const SizedBox(width: 10),
    GestureDetector(
      onTap: () => _launchUrl('https://www.linkedin.com/in/ligapay'),
      child: _buildSocialIcon(FontAwesomeIcons.linkedin), // LinkedIn Icon
    ),
    const SizedBox(width: 10),
    GestureDetector(
      onTap: () => _launchUrl('https://www.twitter.com/ligapay'),
      child: _buildSocialIcon(FontAwesomeIcons.twitter), // X Icon (formerly Twitter)
    ),
    const SizedBox(width: 10),
    GestureDetector(
      onTap: () => _launchUrl('https://www.facebook.com/ligapay'),
      child: _buildSocialIcon(FontAwesomeIcons.facebook), // Facebook Icon
    ),
  ],
),



      ],
    );
  }

  Widget _buildColumn2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Quick links',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
          ),
        ),
            const SizedBox(height: 30),
         InkWell(
          onTap: () => context.go('/about'), // Navigate to About Us page
          child: const Text(
            'About Us',
            style: TextStyle(
              color: Color(0xFF888888),
              fontSize: 20,
            ),
          ),
        ),
       
          const SizedBox(height: 10),
    
        InkWell(
          onTap: () => context.go('/privacy'), // Navigate to Home page
          child: const Text(
            'Privacy Policy',
            style: TextStyle(
              color: Color(0xFF888888),
              fontSize: 20,
            ),
          ),
        ),
       
       
        const SizedBox(height: 10),
        InkWell(
          onTap: () => context.go('/terms'), // Navigate to Terms and Conditions page
          child: const Text(
            'Terms and Conditions',
            style: TextStyle(
              color: Color(0xFF888888),
              fontSize: 20,
            ),
          ),
        ),
        
      ],
    );
  }
  }
 Widget _buildColumn3(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Usefull links',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
          ),
        ),
        const SizedBox(height: 30),
        InkWell(
          onTap: () => context.go('/pricing'), // Navigate to Home page
          child: const Text(
            'Pricing',
            style: TextStyle(
              color: Color(0xFF888888),
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () => context.go('/comingsoon'), // Navigate to About Us page
          child: const Text(
            'Blog',
            style: TextStyle(
              color: Color(0xFF888888),
              fontSize: 20,
            ),
          ),
        ),
       
        
      ],
    );
  }
  

 

  Widget _buildColumn4() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Get in touch',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
          ),
        ),
        SizedBox(height: 30),
        Text(
          'Office Address',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(height: 10),
        Text(
          '101 California Street, San Francisco, CA.',
          style: TextStyle(color: Color(0xFF888888), fontSize: 20),
        ),
        SizedBox(height: 30),
        Text(
          'Email Address',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(height: 10),
        Text(
          'support@LigaPay.com',
          style: TextStyle(color: Color(0xFF888888), fontSize: 20),
        ),
      ],
    );
  }

  Widget _buildSocialIcon(IconData icon) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 16,
      child: Icon(
        icon,
        color: Colors.black,
        size: 16,
      ),
    );
  }

