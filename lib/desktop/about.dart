import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          // Handle button press here
          print("Button Pressed");

          // Navigate to the contact page using GoRouter
          context.go('/');
        },
      ),
      title: const Text('About Us'),
    ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              "Located in the heart of San Francisco’s Financial District, LigaPay is set to redefine the payment processing landscape across the United States with affordable, cutting-edge solutions for individuals and businesses. Specializing in person-to-person payments, business-to-business transactions, and international remittances, we offer competitive services at rates significantly lower than our competitors in the market. Our mission is simple: to make financial transactions seamless, efficient, and reliable, all while providing the cheapest alternative to other payment providers. ",
             style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 16),
            Text(
              
              "What sets LigaPay apart is our ability to integrate effortlessly with existing financial systems, ensuring businesses can adopt our services with minimal disruption and enhanced operational efficiency. Our platform supports real-time transactions, allowing instant processing of payments and transfers for both personal and business clients, with a global reach extending to over 100 countries. This makes cross-border transactions just as simple and cost-effective as local payments.",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 16),
            Text(
              "At LigaPay, we combine advanced security measures, including state-of-the-art encryption and fraud detection technologies, to ensure every transaction is safe and secure, giving customers peace of mind. We also offer highly competitive exchange rates and transparent low fees, ensuring that our clients get the best value in the market without compromising on quality. ",
             style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 16),
            Text(
              "With a commitment to superior customer experience, we provide seamless integration, 24/7 multilingual customer support, and a flexible platform that adapts to the unique needs of businesses and individuals alike. Whether you're sending money locally or internationally, LigaPay offers a faster, cheaper, and more secure payment solution — making us the preferred choice for customers looking for exceptional value and service.",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 16),
            
           
          ],
        ),
      ),
      ),
    );
  }
}
