import 'package:flutter/material.dart';

class CustomDesktopCard3 extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const CustomDesktopCard3({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 1500,
          height: 617,

          padding: const EdgeInsets.symmetric(horizontal: 50),
          // decoration: const BoxDecoration(color: Color(0xFF7DC5E9)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 1400,
                height: 517,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    // Left Image Section
                    Container(
                      width: 675,
                      height: 517,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    const SizedBox(width: 50),
                    // Right Content Section
                    Container(
                      width: 675,
                      height: 517,
                      padding: const EdgeInsets.only(right: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          Text(
                            title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontFamily: 'Utendo',
                              fontWeight: FontWeight.w500,
                              height: 1.02,
                            ),
                          ),
                          const SizedBox(height: 20),
                          // Description
                          Text(
                            description,
                            style: const TextStyle(
                              color: Color(0xFF898989),
                              fontSize: 24,
                              fontFamily: 'Utendo',
                              fontWeight: FontWeight.w400,
                              height: 1.20,
                            ),
                          ),
                          const SizedBox(height: 20),
                          // Button
                          GestureDetector(
                            onTap: onButtonPressed,
                            child: Container(
                              width: 200,
                              height: 60,
                              // padding: const EdgeInsets.symmetric(
                              //     horizontal: 30, vertical: 16),
                              decoration: ShapeDecoration(
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  buttonText,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Utendo',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
