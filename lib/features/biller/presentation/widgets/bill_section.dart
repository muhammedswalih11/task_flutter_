import 'package:flutter/material.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/bill_list_section.dart';

import '../../../../core/utils/colors.dart';

class BillSection extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> bills;
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

    return SliverList.list(
      children: [
        Padding(
          padding: EdgeInsetsGeometry.fromLTRB(18, 9, 18, 9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Add New Biller",
                  style: TextStyle(
                    fontSize: 15,
                    color: DefaultColors.blueLightBase,
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
