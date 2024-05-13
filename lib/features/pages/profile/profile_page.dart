import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text('ProfilePage'),
          TextField(
            decoration: InputDecoration(
              labelText: 'Enter your name',
            ),
          ),
          Text('ProfilePage'),
        ],
      ),
    );
  }
}
