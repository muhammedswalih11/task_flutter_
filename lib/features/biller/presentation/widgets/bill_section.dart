import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/biller/data/models.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/bill_list_section.dart';

class BillSection extends StatelessWidget {
  final String title;
  final List<Bill> bills;
  final bool isPaidSection;
  BillSection({
    required this.title,
    required this.bills,
    this.isPaidSection = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (bills.isEmpty) return SliverToBoxAdapter(child: SizedBox.shrink());
    final s = DefaultStrings.instance;
    return SliverList.list(
      children: [
        Padding(
          padding: EdgeInsetsGeometry.fromLTRB(
            SizeConfig.screenWidth * 0.05,
            SizeConfig.screenWidth * 0.06,
            SizeConfig.screenWidth * 0.05,
            SizeConfig.screenWidth * 0.025,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.screenWidth * 0.045,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  s.addBillText,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: SizeConfig.screenWidth * 0.035,
                  ),
                ),
              ),
            ],
          ),
        ),
        ...bills.map((bill) => BillList(bill: bill, isPaid: isPaidSection)),
      ],
    );
  }
}
