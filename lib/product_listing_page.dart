import 'package:flutter/material.dart';

class ProductListingPage extends StatelessWidget {
  ProductListingPage({super.key});

  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/images/image1.jpg',
      'name': 'Product 1',
      'price': 29.99,
    },
    {
      'image': 'assets/images/image2.jpg',
      'name': 'Product 2',
      'price': 39.99,
    },
    {
      'image': 'assets/images/image1.jpg',
      'name': 'Product 3',
      'price': 49.99,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            elevation: 5.0,
            child: ListTile(
              leading: Image.asset(
                product['image'],
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              title: Text(product['name']),
              subtitle: Text('\$${product['price'].toStringAsFixed(2)}'),
            ),
          );
        },
      ),
    );
  }
}
