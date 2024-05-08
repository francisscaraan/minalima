import 'package:flutter/material.dart';

class Socials extends StatelessWidget {
  final String imagePath;
  const Socials({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}