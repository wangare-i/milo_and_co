import 'package:flutter/material.dart';
import 'product_listing_page.dart';  // Import ProductListingPage
import 'wellbeing_page.dart';  // Import Well-being Page

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/image1.jpg', // Your large background image here
              fit: BoxFit.cover,
            ),
          ),
          // Semi-transparent overlay for text readability
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          // Content on top of background
          Positioned(
            top: 150,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to Milo & Co.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Explore products and well-being tips.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to ProductListingPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  ProductListingPage()),
                    );
                  },
                  child: const Text('View Products'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Well-being tips page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WellBeingPage()),
                    );
                  },
                  child: const Text('Well-being Tips'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    backgroundColor: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
