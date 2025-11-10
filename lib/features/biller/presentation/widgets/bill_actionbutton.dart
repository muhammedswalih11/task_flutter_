import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class BillActionButton extends StatelessWidget {
  final bool isPaid;
  final VoidCallback? onPay;

  const BillActionButton({required this.isPaid, this.onPay});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.centerRight,
        child: isPaid
            ? CircleAvatar(
                radius: screenWidth * 0.03,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.check,
                  color: DefaultColors.white,
                  size: screenWidth * 0.04,
                ),
              )
            : OutlinedButton(
                onPressed: onPay,
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(screenWidth * 0.14, screenHeight * 0.03),
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.03,
                    vertical: screenHeight * 0.005,
                  ),
                  side: BorderSide(color: DefaultColors.blue),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.045),
                  ),
                ),
                child: Text(
                  'Pay',
                  style: TextStyle(
                    color: DefaultColors.blue,

                    fontSize: screenWidth * 0.030,
                  ),
                ),
              ),
      ),
    );
  }
}
