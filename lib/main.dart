// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'desktop/home_page.dart' as DesktopHomePage;
// import 'desktop/personal_page.dart' as DesktopPersonalPage;
// import 'desktop/business_page.dart' as DesktopBusinessPage;
// import 'desktop/remittance_page.dart' as DesktopRemittancePage;
// import 'desktop/careers_page.dart' as DesktopCareersPage;
// import 'desktop/contact_page.dart' as DesktopContactPage;
// import 'mobile/home_page.dart' as MobileHomePage;
// import 'mobile/personal_page.dart' as MobilePersonalPage;
// import 'mobile/business_page.dart' as MobileBusinessPage;
// import 'mobile/remittance_page.dart' as MobileRemittancePage;
// import 'mobile/careers_page.dart' as MobileCareersPage;
// import 'mobile/contact_page.dart' as MobileContactPage;

// void main() {
//   runApp(LigaPay());
// }

// class LigaPay extends StatelessWidget {
//   final GoRouter _router = GoRouter(
//     routes: [
//       GoRoute(
//         path: '/',
//         builder: (context, state) => _responsivePage(
//           context,
//           desktopPage: const DesktopHomePage.DesktopHomePage(),
//           mobilePage: const MobileHomePage.MobileHomePage(),
//         ),
//       ),
//       GoRoute(
//         path: '/personal',
//         builder: (context, state) => _responsivePage(
//           context,
//           desktopPage: DesktopPersonalPage.DesktopPersonalPage(),
//           mobilePage: MobilePersonalPage.MobilePersonalPage(),
//         ),
//       ),
//       GoRoute(
//         path: '/business',
//         builder: (context, state) => _responsivePage(
//           context,
//           desktopPage: DesktopBusinessPage.DesktopBusinessPage(),
//           mobilePage: const MobileBusinessPage.MobileBusinessPage(),
//         ),
//       ),
//       GoRoute(
//         path: '/remittance',
//         builder: (context, state) => _responsivePage(
//           context,
//           desktopPage: DesktopRemittancePage.DesktopRemitancePage(),
//           mobilePage: const MobileRemittancePage.MobileRemitancePage(),
//         ),
//       ),
//       GoRoute(
//         path: '/careers',
//         builder: (context, state) => _responsivePage(
//           context,
//           desktopPage: DesktopCareersPage.DesktopCareersPage(),
//           mobilePage: MobileCareersPage.MobileCareersPage(),
//         ),
//       ),
//       GoRoute(
//         path: '/contact',
//         builder: (context, state) => _responsivePage(
//           context,
//           desktopPage: DesktopContactPage.DesktopContactPage(),
//           mobilePage: MobileContactPage.MobileContactPage(),
//         ),
//       ),
//       GoRoute(
//         path: '/about',
//         builder: (context, state) => _responsivePage(
//           context,
//           desktopPage: DesktopContactPage.DesktopContactPage(),
//           mobilePage: MobileContactPage.MobileContactPage(),
//         ),
//       ),
//       GoRoute(
//         path: '/privacy',
//         builder: (context, state) => _responsivePage(
//           context,
//           desktopPage: DesktopContactPage.DesktopContactPage(),
//           mobilePage: MobileContactPage.MobileContactPage(),
//         ),
//       ),
//       GoRoute(
//         path: '/terms',
//         builder: (context, state) => _responsivePage(
//           context,
//           desktopPage: DesktopContactPage.DesktopContactPage(),
//           mobilePage: MobileContactPage.MobileContactPage(),
//         ),
//       ),
//     ],
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       title: 'LigaPay',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       routerConfig: _router,
//     );
//   }
// }

// // Helper method to select between desktop and mobile pages
// Widget _responsivePage(
//   BuildContext context, {
//   required Widget desktopPage,
//   required Widget mobilePage,
// }) {
//   bool isDesktop = MediaQuery.of(context).size.width >= 800;
//   return isDesktop ? desktopPage : mobilePage;
// }
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ligapay/desktop/about.dart';
import 'package:ligapay/desktop/apply_page_desktop.dart';


import 'package:ligapay/desktop/privacy_policy.dart';
import 'package:ligapay/desktop/terms%20_and_condtions.dart';
import 'package:ligapay/desktop/waiting_list.dart';
import 'package:ligapay/mobile/apply_page_mobile.dart';
import 'package:ligapay/mobile/waitlist_list_mobile.dart';

import 'desktop/home_page.dart' as DesktopHomePage;
import 'desktop/coming_soon.dart' as ComingSoonPage;
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
          mobilePage: const MobileBusinessPage.MobileBusinessPage(),
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
      GoRoute(
        path: '/about',
        builder: (context, state) => _responsivePage(
          context,
          desktopPage: AboutUsPage(),
          mobilePage:AboutUsPage(),
        ),
      ),
      GoRoute(
        path: '/privacy',
        builder: (context, state) => _responsivePage(
          context,
          desktopPage: PrivacyPolicyPage(),
          mobilePage: PrivacyPolicyPage(),
        ),
      ),
      GoRoute(
        path: '/terms',
        builder: (context, state) => _responsivePage(
          context,
          desktopPage: const TermsAndConditionsPage(),
          // ignore: prefer_const_constructors
          mobilePage: TermsAndConditionsPage(),
        ),
      ),
      GoRoute(
        path: '/comingsoon',
        builder: (context, state) => _responsivePage(
          context,
          desktopPage:   ComingSoonPage.ComingSoonPage(),
          mobilePage:  ComingSoonPage.ComingSoonPage(),
        ),
      ),
      GoRoute(
        path: '/apply',
        builder: (context, state) => _responsivePage(
          context,
          desktopPage: ApplyDesktopPage(),
          mobilePage: ApplyMobilePage(),
        ),
      ),
      GoRoute(
        path: '/waitinglist',
        builder: (context, state) => _responsivePage(
          context,
          desktopPage: WaitinglistPage(),
          mobilePage:  WaitinglistPageMobile(),
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
