import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/customized_ui.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/customized_ui/datas/models.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/spend_row.dart';

class CardSpendsBox extends StatelessWidget {
  CardSpendsBox({super.key});
  final s = DefaultStrings.instance;
  List<spendItem> get spendItems => [
    spendItem(
      name: s.billOoreedo,
      category: s.ooreedoCategory,
      amount: s.ooreedoSpendAmount,
      imagePath: 'assets/images/ooredoo.png',
    ),
    spendItem(
      name: s.billBrandName2,
      category: s.primeCategory,
      amount: s.primeSpendAmount,
      imagePath: 'assets/images/prime.png',
    ),
    spendItem(
      name: s.billMakemyTrip,
      category: s.makemyTripCategory,
      amount: s.tripSpendAmount,
      imagePath: 'assets/images/makemytrip.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...spendItems.map(
          (item) => SpendRow(
            name: item.name,
            category: item.category,
            amount: item.amount,
            imagePath: item.imagePath,
          ),
        ),
        MaterialButton(
          minWidth: double.infinity,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color.fromARGB(255, 8, 73, 126)),
            borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.05),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                s.cardSpenButtonText,
                style: TextStyle(
                  color: Color.fromARGB(255, 8, 73, 126),
                  fontSize: SizeConfig.screenWidth * 0.038,
                ),
              ),
              SizedBox(width: SizeConfig.screenWidth * 0.040),
              Transform.rotate(
                angle: 0.5,
                child: Icon(
                  Icons.arrow_upward,
                  color: Color.fromARGB(255, 8, 73, 126),
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
