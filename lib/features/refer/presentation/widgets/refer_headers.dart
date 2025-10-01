import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class ReferHeaders1 extends StatelessWidget {
  const ReferHeaders1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: SizeConfig.screenWidth * 0.06),
        ),
        Text(
          'Refer and Earn',
          style: TextStyle(
            color: const Color.fromARGB(255, 21, 77, 122),
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.screenWidth * 0.045,
          ),
        ),
      ],
    );
  }
}
