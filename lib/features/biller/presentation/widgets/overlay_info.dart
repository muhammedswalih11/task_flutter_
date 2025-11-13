import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/colors.dart';

Widget infoRow(String label, String value, BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
        ),
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
        ),
      ],
    ),
  );
}

class LightDivider extends StatelessWidget {
  const LightDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(height: 1, color: DefaultColors.blue_100);
  }
}
