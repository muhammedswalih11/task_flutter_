import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/colors.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/bill_actionbutton.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/bill_amount.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/bill_info.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/bill_overlay.dart';

class BillList extends StatelessWidget {
  final Map<String, dynamic> bill;
  final bool isPaid;
  final VoidCallback? onPay;
  BillList({required this.bill, required this.isPaid, this.onPay});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        showBillOverlay(
          context,
          bill['name'] as String,
          bill['imageAsset'] as String,
          bill['amount'].toString(),
          bill['rawDueDate'] as DateTime?,
        );
      },
      child: Container(
        height: screenHeight * 0.075,
        margin: EdgeInsets.symmetric(horizontal: 7.00, vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: DefaultColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BillInfo(bill: bill, isPaid: isPaid),
            BillAmount(amount: bill['amount'] as double),
            BillActionButton(isPaid: isPaid, onPay: onPay),
          ],
        ),
      ),
    );
  }
}
