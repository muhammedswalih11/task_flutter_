import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/colors.dart';

import 'package:flutter_tasks_/features/biller/presentation/widgets/delete_closebill.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/due_date_format.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/overlay_info.dart';

void showBillOverlay(
  BuildContext context,
  String title,
  String imagePath,
  String amount,
  DateTime? rawDueDate,
) {
  final formattedDate = rawDueDate != null ? formatDate(rawDueDate) : 'N/A';
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.04),
            padding: EdgeInsets.all(screenWidth * 0.04),
            decoration: BoxDecoration(
              color: DefaultColors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(screenWidth * 0.05),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Manage Biller',
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        CircleAvatar(
                          radius: screenWidth * 0.035,
                          backgroundImage: AssetImage(imagePath),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.025),
                ClipRRect(
                  borderRadius: BorderRadius.circular(screenWidth * 0.04),
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.black,
                      color: DefaultColors.white,
                      border: Border.all(
                        color: DefaultColors.blue_100,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(screenWidth * 0.04),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        infoRow('Account Name', 'Alqabiadi', context),
                        LightDivider(),
                        infoRow('Amount Due', '${amount}${'QAR'}', context),
                        LightDivider(),
                        infoRow('Next Due On', formattedDate, context),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                InkWell(onTap: () {}, child: DeleteBill()),
                SizedBox(height: screenHeight * 0.04),
              ],
            ),
          ),
          Positioned(right: screenWidth * 0.0100, child: CloseBill()),
        ],
      );
    },
  );
}
