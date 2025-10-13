import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/customized_ui.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class CcBillSection extends StatelessWidget {
  const CcBillSection({super.key});

  @override
  Widget build(BuildContext context) {
    final s = DefaultStrings.instance;
    return Padding(
      padding: EdgeInsets.only(
        right: SizeConfig.screenWidth * 0.04,
        left: SizeConfig.screenWidth * 0.04,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade50,

          borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.03),
          border: Border.all(color: Colors.blueGrey.shade200, width: 0.6),
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
                  s.ccstatementMonth,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.screenWidth * 0.030,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      s.ccDueAmount,
                      style: TextStyle(
                        fontSize: SizeConfig.screenWidth * 0.042,
                      ),
                    ),
                    Text(
                      s.ccDueDate,
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
                    side: BorderSide(color: Color.fromARGB(255, 8, 73, 126)),
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
      ),
    );
  }
}
