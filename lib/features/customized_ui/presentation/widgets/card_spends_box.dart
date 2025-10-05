import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/spend_row.dart';

class CardSpendsBox extends StatelessWidget {
  const CardSpendsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SpendRow(
          name: 'Oreedo',
          category: 'Phone Bill',
          amount: 'QAR 2,636.41',
          imagePath: 'assets/images/ooredoo.png',
        ),
        SpendRow(
          name: 'Amazone Prime',
          category: 'Entertainment',
          amount: 'QAR 636.31',
          imagePath: 'assets/images/prime.png',
        ),
        SpendRow(
          name: 'Make My Trip',
          category: 'Travel',
          amount: 'QAR 234.46',
          imagePath: 'assets/images/makemytrip.png',
        ),

        MaterialButton(
          minWidth: double.infinity,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.05),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'View all spends',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: SizeConfig.screenWidth * 0.038,
                ),
              ),
              SizedBox(width: SizeConfig.screenWidth * 0.040),
              Transform.rotate(
                angle: 0.5,
                child: Icon(
                  Icons.arrow_upward,
                  color: Colors.blue,
                  size: SizeConfig.screenWidth * 0.05,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
