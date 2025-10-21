import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/customized_ui.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/customized_ui/datas/models.dart';
import 'package:flutter_tasks_/features/customized_ui/domain/customized_ui_service.dart';
import 'package:shimmer/shimmer.dart';

class CcBillSection extends StatelessWidget {
  const CcBillSection({super.key});

  @override
  Widget build(BuildContext context) {
    final s = DefaultStrings.instance;
    final ccService = CustomizedUiService();
    return Padding(
      padding: EdgeInsets.only(
        right: SizeConfig.screenWidth * 0.04,
        left: SizeConfig.screenWidth * 0.04,
      ),
      child: FutureBuilder<List<CcBillModel>>(
        future: ccService.fetchCcBills(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Single shimmer placeholder while loading (one bill container)
            return Padding(
              padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.012),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,
                  borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.03),
                  border: Border.all(color: Colors.blueGrey.shade200, width: 0.6),
                ),
                child: Padding(
                  padding: EdgeInsets.all(SizeConfig.screenWidth * 0.032),
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      padding: EdgeInsets.all(SizeConfig.screenWidth * 0.025),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.03),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(width: SizeConfig.screenWidth * 0.25, height: SizeConfig.screenHeight * 0.03, color: Colors.white),
                          Container(width: SizeConfig.screenWidth * 0.25, height: SizeConfig.screenHeight * 0.05, color: Colors.white),
                          Container(width: SizeConfig.screenWidth * 0.15, height: SizeConfig.screenHeight * 0.03, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }

          if (snapshot.hasError) {
            return const Center(child: Text('Error loading bills'));
          }

          final ccBills = snapshot.data ?? [];

          if (ccBills.isEmpty) {
            return const Text("No bills available.");
          }
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: ccBills.length,
            itemBuilder: (context, index) {
              final bill = ccBills[index];
              return Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,

                  borderRadius: BorderRadius.circular(
                    SizeConfig.screenWidth * 0.03,
                  ),
                  border: Border.all(
                    color: Colors.blueGrey.shade200,
                    width: 0.6,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(SizeConfig.screenWidth * 0.032),
                  child: Container(
                    padding: EdgeInsets.all(SizeConfig.screenWidth * 0.025),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        SizeConfig.screenWidth * 0.03,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          bill.month,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.screenWidth * 0.030,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              bill.dueAmount,
                              style: TextStyle(
                                fontSize: SizeConfig.screenWidth * 0.042,
                              ),
                            ),
                            Text(
                              bill.dueDate,
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: SizeConfig.screenWidth * 0.033,
                              ),
                            ),
                          ],
                        ),
                        MaterialButton(
                          height: SizeConfig.screenHeight * 0.030,
                          minWidth: SizeConfig.screenWidth * 0.15,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color.fromARGB(255, 8, 73, 126),
                            ),
                            borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 0.045,
                            ),
                          ),

                          onPressed: () {},
                          child: Text(
                            s.ccPayButtontext,
                            style: TextStyle(
                              color: Color.fromARGB(255, 8, 73, 126),
                              fontSize: SizeConfig.screenWidth * 0.036,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
