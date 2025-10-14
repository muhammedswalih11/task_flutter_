import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class BillActionButton extends StatelessWidget {
  final bool isPaid;
  final VoidCallback? onPay;

  const BillActionButton({required this.isPaid, this.onPay});

  @override
  Widget build(BuildContext context) {
    final s = DefaultStrings.instance;
    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.centerRight,
        child: isPaid
            ? CircleAvatar(
                radius: SizeConfig.screenWidth * 0.03,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: SizeConfig.screenWidth * 0.04,
                ),
              )
            : OutlinedButton(
                onPressed: onPay,
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(
                    SizeConfig.screenWidth * 0.14,
                    SizeConfig.screenHeight * 0.03,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 0.03,
                    vertical: SizeConfig.screenHeight * 0.005,
                  ),
                  side: BorderSide(color: Color.fromARGB(255, 12, 66, 111)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      SizeConfig.screenWidth * 0.045,
                    ),
                  ),
                ),
                child: Text(
                  s.billcardPayText,
                  style: TextStyle(
                    color: Color.fromARGB(255, 12, 66, 111),
                    fontSize: SizeConfig.screenWidth * 0.030,
                  ),
                ),
              ),
      ),
    );
  }
}
