import 'package:flutter/material.dart';

class CustomMobileCard3 extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const CustomMobileCard3({
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 360,
          height: 617,

          padding: const EdgeInsets.symmetric(horizontal: 50),
          // decoration: const BoxDecoration(color: Color(0xFF7DC5E9)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 324,
                height: 516,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    // Left Image Section
                    Container(
                      width: 324,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    const SizedBox(width: 10),
                    // Right Content Section
                    Container(
                      width: 324,
                      height: 517,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          Text(
                            title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 32,
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
                              fontSize: 16,
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
                                    fontWeight: FontWeight.w400,
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
