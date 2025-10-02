import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class DeleteBill extends StatelessWidget {
  const DeleteBill({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SizeConfig.screenWidth * 0.03),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 248, 253, 255),
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.03),
        border: Border.all(color: Colors.blue.shade200),
      ),
      child: Row(
        children: [
          Icon(
            Icons.delete,
            color: Colors.white,
            size: SizeConfig.screenWidth * 0.08,
            shadows: [
              Shadow(offset: Offset(0, 0), blurRadius: 3, color: Colors.black),
            ],
          ),
          SizedBox(width: SizeConfig.screenWidth * 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delete Biller',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.screenWidth * 0.04,
                ),
              ),
              Text(
                'You will stop Tracking the biller if you delete it',
                style: TextStyle(fontSize: SizeConfig.screenWidth * 0.03),
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
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Icon(
        Icons.close,
        color: Colors.white,
        size: SizeConfig.screenHeight * 0.03,
      ),
    );
  }
}
