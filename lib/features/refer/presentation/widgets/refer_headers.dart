import 'package:flutter/material.dart';

class ReferHeaders1 extends StatelessWidget {
  ReferHeaders1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: screenWidth * 0.06,
            color: Colors.black,
          ),
        ),
        Text(
          'Refer and Earn',
          style: TextStyle(
            // color: const Color.fromARGB(255, 21, 77, 122),
            color: Colors.grey.shade600,
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.045,
          ),
        ),
      ],
    );
  }
}
