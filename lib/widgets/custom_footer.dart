
import 'package:flutter/material.dart';

class CustomFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          width: double.infinity,
          color: const Color(0xFF262626),
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Section
              screenWidth > 600
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildColumn1(),
                        _buildColumn2(),
                        _buildColumn3(),
                        _buildColumn4(),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildColumn1(),
                        const SizedBox(height: 40),
                        _buildColumn2(),
                        const SizedBox(height: 40),
                        _buildColumn3(),
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
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.black),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '© LigaPay 2024',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Utendo',
                  fontWeight: FontWeight.w400,
                  height: 0.08,
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
            _buildSocialIcon(Icons.set_meal),
            const SizedBox(width: 10),
            _buildSocialIcon(Icons.camera_alt_outlined), // Instagram Icon
            const SizedBox(width: 10),
            _buildSocialIcon(Icons.facebook),
            const SizedBox(width: 10),
            _buildSocialIcon(Icons.toc), // Substitute for X (Twitter)
          ],
        ),
      ],
    );
  }

  Widget _buildColumn2() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Legal',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
          ),
        ),
        SizedBox(height: 30),
        Text(
          'Home',
          style: TextStyle(
            color: Color(0xFF888888),
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'About us',
          style: TextStyle(
            color: Color(0xFF888888),
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Privacy Policy',
          style: TextStyle(
            color: Color(0xFF888888),
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Terms and Conditions',
          style: TextStyle(
            color: Color(0xFF888888),
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  Widget _buildColumn3() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Useful Links',
          style: TextStyle(
            color: Colors .white,
            fontSize: 36,
          ),
        ),
        SizedBox(height: 30),
        Text(
          'Pricing',
          style: TextStyle(
            color: Color(0xFF888888),
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Blog',
          style: TextStyle(
            color: Color(0xFF888888),
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Contact us',
          style: TextStyle(
            color: Color(0xFF888888),
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'License',
          style: TextStyle(
            color: Color(0xFF888888),
            fontSize: 20,
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
          '4646 Poplar Ave, STE 445,\nMemphis, TN 38117, USA.',
          style: TextStyle( color: Color(0xFF888888), fontSize: 20),
        ),
        SizedBox(height: 30),
        Text(
          'Email Address',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(height: 10),
        Text(
          'support@LigaPay.com',
          style: TextStyle( color: Color(0xFF888888), fontSize: 20),
        ),
      ],
    );
  }

  Widget _buildSocialIcon(IconData icon) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 18,
      child: Icon(
        icon,
        color: Colors.black,
        size: 18,
      ),
    );
  }

  Widget _buildHeading(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildLink(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white70,
        fontSize: 14,
      ),
    );
  }
}