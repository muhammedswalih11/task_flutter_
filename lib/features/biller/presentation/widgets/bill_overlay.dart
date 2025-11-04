import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/bottom_sheet.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
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
  final s = DefaultStrings.instance;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.04),
            padding: EdgeInsets.all(SizeConfig.screenWidth * 0.04),
            decoration: BoxDecoration(
              // color: Colors.white,
              color: Theme.of(context).colorScheme.primaryFixedDim,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(SizeConfig.screenWidth * 0.05),
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
                      s.title,
                      style: TextStyle(
                        fontSize: SizeConfig.screenWidth * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                        SizedBox(width: SizeConfig.screenWidth * 0.02),
                        CircleAvatar(
                          radius: SizeConfig.screenWidth * 0.035,
                          backgroundImage: AssetImage(imagePath),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.025),
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    SizeConfig.screenWidth * 0.04,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      color: Theme.of(context).colorScheme.primaryFixedDim,
                      border: Border.all(
                        color: const Color.fromARGB(255, 213, 238, 250),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(
                        SizeConfig.screenWidth * 0.04,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        infoRow(s.acnameText, s.accountName, context),
                        LightDivider(),
                        infoRow(
                          s.amountDueText,
                          '${amount}${s.currencyQAR}',
                          context,
                        ),
                        LightDivider(),
                        infoRow(s.dueDateText, formattedDate, context),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                InkWell(onTap: () {}, child: DeleteBill()),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
              ],
            ),
          ),
          Positioned(
            right: SizeConfig.screenWidth * 0.0100,
            child: CloseBill(),
          ),
        ],
      );
    },
  );
}
