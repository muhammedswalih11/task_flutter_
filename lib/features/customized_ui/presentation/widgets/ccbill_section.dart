import 'package:flutter/material.dart';

import 'package:flutter_tasks_/features/customized_ui/constants/customized_ui_service.dart';

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
      padding: EdgeInsets.only(right: 18, left: 18),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: ccBills.length,
        itemBuilder: (context, index) {
          final bill = ccBills[index];
          return Container(
            decoration: BoxDecoration(
              color: DefaultColors.blue_0,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.blueGrey.shade200, width: 0.6),
            ),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: DefaultColors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      bill['month'] as String,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      bill['dueAmount'] as String,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: DefaultColors.gray8A,
                      ),
                    ),
                    MaterialButton(
                      height: screenHeight * 0.030,
                      minWidth: screenWidth * 0.15,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: DefaultColors.dashboarddarkBlue,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Pay',
                        style: TextStyle(
                          color: DefaultColors.dashboarddarkBlue,
                          fontSize: 12,
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
