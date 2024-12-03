import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResponsiveHeader extends StatelessWidget {
const ResponsiveHeader({super.key});

@override
Widget build(BuildContext context) {
  // Determine if it's desktop or mobile
  bool isDesktop = MediaQuery.of(context).size.width >= 800;

  // Get current route using go_router's GoRouterState
  final goRouter = GoRouter.of(context);
  String currentRoute = goRouter.routerDelegate.currentConfiguration.fullPath;

  return Container(
    width: double.infinity,
    color: Colors.transparent, // Make the background transparent
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/headerlogo.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
        // Navigation Menu
        if (isDesktop)
          _buildDesktopNavigationMenu(context, currentRoute)
        else
          _buildMobileNavigationMenu(context, currentRoute), // Mobile Navigation
      ],
    ),
  );
}

// Desktop Navigation Menu
Widget _buildDesktopNavigationMenu(BuildContext context, String currentRoute) {
  return Row(
    children: [
      _buildNavItem(context, 'Home', '/', currentRoute),
      _buildNavItem(context, 'Personal', '/personal', currentRoute),
      _buildNavItem(context, 'Business', '/business', currentRoute),
      _buildNavItem(context, 'Remittance', '/remittance', currentRoute),
      _buildNavItem(context, 'Careers', '/careers', currentRoute),
      _buildNavItem(context, 'Contact Us', '/contact', currentRoute),
    ],
  );
}

// Mobile Navigation Menu
Widget _buildMobileNavigationMenu(BuildContext context, String currentRoute) {
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
                _buildMobileNavItem(context, 'Home', '/', currentRoute),
                _buildMobileNavItem(context, 'Personal', '/personal', currentRoute),
                _buildMobileNavItem(context, 'Business', '/business', currentRoute),
                _buildMobileNavItem(context, 'Remittance', '/remittance', currentRoute),
                _buildMobileNavItem(context, 'Careers', '/careers', currentRoute),
                _buildMobileNavItem(context, 'Contact Us', '/contact', currentRoute),
              ],
            ),
          );
        },
      );
    },
  );
}

// Navigation Menu Item for Desktop
Widget _buildNavItem(BuildContext context, String title, String route, String currentRoute) {
  Color textColor = currentRoute == route ? Colors.white : Colors.grey; // Disabled color

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: TextButton(
      onPressed: currentRoute == route
          ? null
          : () {
              context.go(route); // GoRouter navigation
            },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero, // No padding
        foregroundColor: textColor, // Text color based on the current route
      ),
      child: Text(
        title,
        style: TextStyle(
          color: textColor, // Adjust text color based on the route
          fontSize: 16,
        ),
      ),
    ),
  );
}

  // Navigation Menu Item for Mobile
  Widget _buildMobileNavItem(BuildContext context, String title, String route, String currentRoute) {
    Color textColor = currentRoute == route ? Colors.white : Colors.grey; // Disabled color

    return TextButton(
      onPressed: currentRoute == route
          ? null
          : () {
              Navigator.of(context).pop(); // Close the modal
              context.go(route); // GoRouter navigation
            },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero, // No padding
        foregroundColor: textColor, // Text color based on the current route
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Text(
          title,
          style: TextStyle(color: textColor), // Adjust text color based on the route
        ),
      ),
    );
  }
}
