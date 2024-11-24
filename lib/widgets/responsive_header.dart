import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResponsiveHeader extends StatelessWidget {
  const ResponsiveHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine if it's desktop or mobile
    bool isDesktop = MediaQuery.of(context).size.width >= 800;

    return Container(
      width: double.infinity,
      color: Colors.transparent, // Make the background transparent
      child: Row(
        mainAxisAlignment: isDesktop
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        children: [
          // Logo Section
          Row(
            children: [
              Container(
                width: 224,
                height: 55.50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/headerlogo.png "),
                    fit: BoxFit.fill,
                  ),
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
          style: const TextStyle(
            color: Colors.black, // Adjust text color for visibility
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
