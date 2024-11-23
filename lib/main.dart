import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'desktop/home_page.dart' as DesktopHomePage;
import 'desktop/personal_page.dart' as DesktopPersonalPage;
import 'desktop/business_page.dart' as DesktopBusinessPage;
import 'desktop/remittance_page.dart' as DesktopRemittancePage;
import 'desktop/careers_page.dart' as DesktopCareersPage;
import 'desktop/contact_page.dart' as DesktopContactPage;
import 'mobile/home_page.dart' as MobileHomePage;
import 'mobile/personal_page.dart' as MobilePersonalPage;
import 'mobile/business_page.dart' as MobileBusinessPage;
import 'mobile/remittance_page.dart' as MobileRemittancePage;
import 'mobile/careers_page.dart' as MobileCareersPage;
import 'mobile/contact_page.dart' as MobileContactPage;

void main() {
  runApp(LigaPay());
}

class LigaPay extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => _responsivePage(
          context,
          desktopPage: const DesktopHomePage.DesktopHomePage(),
          mobilePage: const MobileHomePage.MobileHomePage(),
        ),
      ),
      GoRoute(
        path: '/personal',
        builder: (context, state) => _responsivePage(
          context,
          desktopPage: DesktopPersonalPage.DesktopPersonalPage(),
          mobilePage: MobilePersonalPage.MobilePersonalPage(),
        ),
      ),
      GoRoute(
        path: '/business',
        builder: (context, state) => _responsivePage(
          context,
          desktopPage: DesktopBusinessPage.DesktopBusinessPage(),
          mobilePage: MobileBusinessPage.MobileBusinessPage(),
        ),
      ),
      GoRoute(
        path: '/remittance',
        builder: (context, state) => _responsivePage(
          context,
          desktopPage: DesktopRemittancePage.DesktopRemitancePage(),
          mobilePage: const MobileRemittancePage.MobileRemitancePage(),
        ),
      ),
      GoRoute(
        path: '/careers',
        builder: (context, state) => _responsivePage(
          context,
          desktopPage: DesktopCareersPage.DesktopCareersPage(),
          mobilePage: MobileCareersPage.MobileCareersPage(),
        ),
      ),
      GoRoute(
        path: '/contact',
        builder: (context, state) => _responsivePage(
          context,
          desktopPage: DesktopContactPage.DesktopContactPage(),
          mobilePage: MobileContactPage.MobileContactPage(),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'LigaPay',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: _router,
    );
  }
}

// Helper method to select between desktop and mobile pages
Widget _responsivePage(
  BuildContext context, {
  required Widget desktopPage,
  required Widget mobilePage,
}) {
  bool isDesktop = MediaQuery.of(context).size.width >= 800;
  return isDesktop ? desktopPage : mobilePage;
}
