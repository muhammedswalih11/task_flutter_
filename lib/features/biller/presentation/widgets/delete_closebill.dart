import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/colors.dart';

class DeleteBill extends StatelessWidget {
  const DeleteBill({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(screenWidth * 0.03),
      decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 248, 253, 255),
        color: DefaultColors.white,
        borderRadius: BorderRadius.circular(screenWidth * 0.03),
        border: Border.all(color: Colors.blue.shade200),
      ),
      child: Row(
        children: [
          Icon(
            Icons.delete,
            color: DefaultColors.white,
            size: screenWidth * 0.08,
            shadows: [
              Shadow(
                offset: Offset(0, 0),
                blurRadius: 3,
                color: DefaultColors.black,
              ),
            ],
          ),
          SizedBox(width: screenWidth * 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delete Biller',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.04,
                ),
              ),
              Text(
                'You will stop tracking the biller if you delete it',
                style: TextStyle(fontSize: screenWidth * 0.03),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CloseBill extends StatelessWidget {
  const CloseBill({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Icon(
        Icons.close,
        color: DefaultColors.white,
        size: screenHeight * 0.03,
      ),
    );
  }
}
