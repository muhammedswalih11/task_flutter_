import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/biller/data/models.dart';

class BillInfo extends StatelessWidget {
  final Bill bill;
  final bool isPaid;

  const BillInfo({required this.bill, required this.isPaid});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  SizeConfig.screenWidth * 0.03,
                ),
                child: Image.asset(
                  bill.imageAsset,
                  width: SizeConfig.screenWidth * 0.045,
                  height: SizeConfig.screenWidth * 0.045,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(
                      Icons.error,
                      size: SizeConfig.screenWidth * 0.08,
                    );
                  },
                ),
              ),
              SizedBox(width: SizeConfig.screenWidth * 0.014),
              Text(
                bill.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.screenWidth * 0.04,
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.004),
          Text(
            bill.dueDate,
            style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.032,
              color: isPaid ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
