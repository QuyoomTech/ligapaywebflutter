import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResponsiveHeader extends StatelessWidget {
  const ResponsiveHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine if it's desktop or mobile
    bool isDesktop = MediaQuery.of(context).size.width >= 800;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.transparent, // Make the background transparent
      child: Row(
        mainAxisAlignment: isDesktop
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          // Logo Section
          Row(
            children: [
              Icon(Icons.credit_card, color: Colors.black), // Adjust color for visibility
              SizedBox(width: 8),
              Text(
                'LigaPay',
                style: TextStyle(
                  color: Colors.black, // Adjust text color for visibility
                  fontSize: isDesktop ? 24 : 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          if (isDesktop) _buildNavigationMenu(context), // Menu for Desktop
        ],
      ),
    );
  }

  // Desktop Navigation Menu
  Widget _buildNavigationMenu(BuildContext context) {
    return Row(
      children: [
        _buildNavItem(context, 'Home', '/'),
        _buildNavItem(context, 'Personal', '/personal'),
        _buildNavItem(context, 'Business', '/business'),
        _buildNavItem(context, 'Remittance', '/remittance'),
        _buildNavItem(context, 'Careers', '/careers'),
        _buildNavItem(context, 'Contact Us', '/contact'),
      ],
    );
  }

  // Navigation Menu Item
  Widget _buildNavItem(BuildContext context, String title, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: () {
          context.go(route); // GoRouter navigation
        },
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black, // Adjust text color for visibility
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
