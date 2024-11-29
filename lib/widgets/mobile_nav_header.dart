import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MobileNavHeader extends StatelessWidget {
  const MobileNavHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine if it's desktop or mobile
    bool isDesktop = MediaQuery.of(context).size.width >= 800;

    return Container(
      width: double.infinity,
      color: Colors.transparent, // Make the background transparent
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo Section
          Row(
            children: [
              Container(
                width: 140,
                height: 36,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/headerlogo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          // Navigation Menu
          if (isDesktop)
            _buildDesktopNavigationMenu(context)
          else
            _buildMobileNavigationMenu(context), // Mobile Navigation
        ],
      ),
    );
  }

  // Desktop Navigation Menu
  Widget _buildDesktopNavigationMenu(BuildContext context) {
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

  // Mobile Navigation Menu
  Widget _buildMobileNavigationMenu(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu, color: Colors.white),
      onPressed: () {
        // Show bottom sheet or modal for navigation
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              color: Colors.black,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildMobileNavItem(context, 'Home', '/'),
                  _buildMobileNavItem(context, 'Personal', '/personal'),
                  _buildMobileNavItem(context, 'Business', '/business'),
                  _buildMobileNavItem(context, 'Remittance', '/remittance'),
                  _buildMobileNavItem(context, 'Careers', '/careers'),
                  _buildMobileNavItem(context, 'Contact Us', '/contact'),
                ],
              ),
            );
          },
        );
      },
    );
  }

  // Navigation Menu Item for Desktop
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
            color: Colors.white, // Adjust text color for visibility
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  // Navigation Menu Item for Mobile
  Widget _buildMobileNavItem(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.of(context).pop(); // Close the modal
        context.go(route); // GoRouter navigation
      },
    );
  }
}
