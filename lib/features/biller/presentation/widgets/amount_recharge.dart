import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class AmountRecharge extends StatelessWidget {
  const AmountRecharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '23.00 QAR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.screenWidth * 0.045,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            side: BorderSide(color: Color.fromARGB(255, 12, 66, 111)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                SizeConfig.screenWidth * 0.05,
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth * 0.06,
              vertical: SizeConfig.screenWidth * 0.03,
            ),
          ),
          child: Text(
            'Recharge',
            style: TextStyle(
              color: Color.fromARGB(255, 12, 66, 111),
              fontSize: SizeConfig.screenWidth * 0.035,
            ),
          ),
        ),
      ],
    );
  }
}
