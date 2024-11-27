import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name: John Doe',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Email: johndoe@example.com',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implement the edit profile action here
              },
              child: const Text('Edit Profile'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your Orders:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Example list of orders
            const ListTile(
              title: Text('Order #123'),
              subtitle: Text('KSh 1,500'),
            ),
            const ListTile(
              title: Text('Order #124'),
              subtitle: Text('KSh 2,000'),
            ),
            const ListTile(
              title: Text('Order #125'),
              subtitle: Text('KSh 2,500'),
            ),
          ],
        ),
      ),
    );
  }
}
