import 'package:flutter/material.dart';

import 'package:flutter_tasks_/features/customized_ui/domain/customized_ui_service.dart';

import '../../../../core/utils/colors.dart';

class CcBillSection extends StatelessWidget {
  const CcBillSection({super.key});

  @override
  Widget build(BuildContext context) {
    final ccService = CustomizedUiService();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final ccBills = ccService.getCcBills();
    return Padding(
      padding: EdgeInsets.only(
        right: screenWidth * 0.04,
        left: screenWidth * 0.04,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: ccBills.length,
        itemBuilder: (context, index) {
          final bill = ccBills[index];
          return Container(
            decoration: BoxDecoration(
              color: DefaultColors.dashboardGray,
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
              border: Border.all(color: Colors.blueGrey.shade200, width: 0.6),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.032),
              child: Container(
                padding: EdgeInsets.all(screenWidth * 0.025),
                decoration: BoxDecoration(
                  color: DefaultColors.white,
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      bill['month'] as String,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.030,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bill['dueAmount'] as String,
                          style: TextStyle(fontSize: screenWidth * 0.042),
                        ),
                        Text(
                          bill['dueDate'] as String,
                          style: TextStyle(fontSize: screenWidth * 0.033),
                        ),
                      ],
                    ),
                    MaterialButton(
                      height: screenHeight * 0.030,
                      minWidth: screenWidth * 0.15,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: DefaultColors.dashboarddarkBlue,
                        ),
                        borderRadius: BorderRadius.circular(
                          screenWidth * 0.045,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Pay',
                        style: TextStyle(
                          color: DefaultColors.dashboarddarkBlue,
                          fontSize: screenWidth * 0.036,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
