import 'package:flutter/material.dart';

class ProductListingPage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {'name': 'Product 1', 'image': 'assets/images/image1.jpg', 'description': 'Description for product 1', 'price': '\$20.00'},
    {'name': 'Product 2', 'image': 'assets/images/image2.jpg', 'description': 'Description for product 2', 'price': '\$25.00'},
    {'name': 'Product 3', 'image': 'assets/images/image3.jpg', 'description': 'Description for product 3', 'price': '\$30.00'},
    {'name': 'Product 4', 'image': 'assets/images/image4.jpg', 'description': 'Description for product 4', 'price': '\$35.00'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Listing'),
      ),
      body: SingleChildScrollView( // Wrap the whole body in a scrollable view
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            shrinkWrap: true, // This ensures the GridView does not take up infinite space
            physics: NeverScrollableScrollPhysics(), // Disable the internal scroll of GridView
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.7,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        product['image']!,
                        height: 150.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product['name']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        product['description']!,
                        style: const TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        product['price']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.green,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('View Details'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
