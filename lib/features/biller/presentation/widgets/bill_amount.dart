import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class BillAmount extends StatelessWidget {
  final double amount;

  const BillAmount({required this.amount});

  @override
  Widget build(BuildContext context) {
    final s = DefaultStrings.instance;
    return Expanded(
      flex: 2,
      child: Text(
        '${amount.toStringAsFixed(2)} ${s.currencyQAR}',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: SizeConfig.screenWidth * 0.04,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
