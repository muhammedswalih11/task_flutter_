import 'package:flutter/material.dart';

import 'package:flutter_tasks_/features/customized_ui/constants/customized_ui_service.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/spend_row.dart';

import '../../../../core/utils/colors.dart';

class CardSpendsBox extends StatelessWidget {
  CardSpendsBox({super.key});
  final service = CustomizedUiService();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final spendItems = service.getCardSpends();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...spendItems.map(
          (item) => SpendRow(
            name: item['name'],
            category: item['category'],
            amount: item['amount'],
            imagePath: item['imagePath'],
          ),
        ),
        MaterialButton(
          minWidth: double.infinity,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            side: BorderSide(color: DefaultColors.dashboarddarkBlue),
            borderRadius: BorderRadius.circular(screenWidth * 0.05),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'View all Spends',
                style: TextStyle(
                  color: DefaultColors.dashboarddarkBlue,
                  fontSize: 13,
                ),
              ),
              SizedBox(width: 14.00),
              Transform.rotate(
                angle: 0.5,
                child: Icon(
                  Icons.arrow_upward,
                  color: DefaultColors.dashboarddarkBlue,
                  size: screenWidth * 0.05,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
