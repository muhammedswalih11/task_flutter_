import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class BillInfo extends StatelessWidget {
  final Map<String, dynamic> bill;
  final bool isPaid;

  const BillInfo({required this.bill, required this.isPaid});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(screenWidth * 0.03),
                child: Image.asset(
                  bill['imageAsset'] as String,
                  width: screenWidth * 0.045,
                  height: screenWidth * 0.045,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error, size: screenWidth * 0.08);
                  },
                ),
              ),
              SizedBox(width: screenWidth * 0.014),
              Text(
                bill['name'] as String,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.04,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.004),
          Text(
            bill['dueDate'] as String,
            style: TextStyle(
              fontSize: screenWidth * 0.032,
              color: isPaid ? DefaultColors.green_0 : DefaultColors.red_0,
            ),
          ),
        ],
      ),
    );
  }
}
