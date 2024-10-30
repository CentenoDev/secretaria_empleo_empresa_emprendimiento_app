import 'package:flutter/material.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.account_circle, color: Colors.black87),
      onPressed: () {
        Navigator.pushNamed(context, '/profile');
      },
    );
  }
}
