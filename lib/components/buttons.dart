import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function()? onTap;
  final String label;

  const Buttons({
    Key? key,
    required this.onTap,
    required this.label,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(17.5),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color(0xFF5791B3),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            label, // Use the label variable here
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}