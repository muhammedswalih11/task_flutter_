import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/biller/data/models.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/bill_actionbutton.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/bill_amount.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/bill_info.dart';

class BillList extends StatelessWidget {
  final Bill bill;
  final bool isPaid;
  final VoidCallback? onPay;
  BillList({required this.bill, required this.isPaid, this.onPay});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight * 0.065,
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.screenWidth * 0.020,
        vertical: SizeConfig.screenHeight * 0.008,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.screenWidth * 0.015,
        vertical: SizeConfig.screenHeight * 0.015,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.04),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BillInfo(bill: bill),
          BillAmount(amount: bill.amount),
          BillActionButton(isPaid: isPaid, onPay: onPay),
        ],
      ),
    );
  }
}
