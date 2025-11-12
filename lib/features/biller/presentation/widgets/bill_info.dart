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
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  bill['imageAsset'] as String,
                  width: 18,
                  height: 18,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error, size: screenWidth * 0.08);
                  },
                ),
              ),
              SizedBox(width: 4.04),
              Text(
                bill['name'] as String,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.004),
          Text(
            bill['dueDate'] as String,
            style: TextStyle(
              fontSize: 11.5,
              color: isPaid ? DefaultColors.green_0 : DefaultColors.red_0,
            ),
          ),
        ],
      ),
    );
  }
}
