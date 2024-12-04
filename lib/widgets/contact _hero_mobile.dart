import 'package:flutter/material.dart';
import 'package:ligapay/network_handling/form_controller.dart';
import 'package:ligapay/widgets/form.dart';
import 'package:ligapay/widgets/mobile_nav_header.dart';


class HeroContactMobile extends StatelessWidget {
  final String backgroundImageUrl;
  final String title;
  final String subtitle;

  const HeroContactMobile({
    Key? key,
    required this.backgroundImageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Container(
          width: double.infinity,
          height: 842,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(backgroundImageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Black overlay and centered content
        Container(
          width: double.infinity,
          height: 842,
          color: Colors.black.withOpacity(0.0), // Restored color overlay
        ),
        Center(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const MobileNavHeader(),
                  const SizedBox(height: 50),
                  // Main content
                  Container(
                    width: 324,
                    padding: const EdgeInsets.all(18),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white
                          .withOpacity(0.9), // Background for form section
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize
                          .min, // Ensures the Column takes only as much space as its children
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Title and Subtitle
                        Column(
                          mainAxisSize: MainAxisSize
                              .min, // Shrinks the Column to fit the text
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize:
                                    _getResponsiveFontSize(context, 30, 60, 90),
                                fontFamily: 'Utendo',
                                fontWeight: FontWeight.w600,
                                height: 1.0,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              subtitle,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 153, 153, 153),
                                fontSize:
                                    _getResponsiveFontSize(context, 16, 20, 24),
                                fontFamily: 'Utendo',
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                        // Custom Form
                        CustomForm(
                          onSubmit: (formModel) async {
                            FormController formController = FormController();
                            formController.submitForm(formModel, (response) {
                              final snackBar = SnackBar(
                                content: Text(
                                  response == FormController.STATUS_SUCCESS
                                      ? "Details Submitted"
                                      : "Error Occurred!",
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            });
                          },
                          submitButtonText: "Submit",
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

double _getResponsiveFontSize(BuildContext context, double mobileSize,
    double tabletSize, double desktopSize) {
  double screenWidth = MediaQuery.of(context).size.width;

  if (screenWidth < 600) {
    // Mobile
    return mobileSize;
  } else if (screenWidth < 1200) {
    // Tablet
    return tabletSize;
  } else {
    // Desktop
    return desktopSize;
  }
}
