import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'You Have',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: screenWidth * 0.02),
            Text(
              '4 Bills due',
              style: TextStyle(
                fontSize: 18.0,
                color: DefaultColors.blueLightBase,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Text(
          'Pay and Manage Billers and Recharges',
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}

class HeaderSection1 extends StatelessWidget {
  const HeaderSection1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios, size: 18),
              onPressed: () {},
            ),
            Text(
              'Billers',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: DefaultColors.blue4,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class RechargeHeadText extends StatelessWidget {
  const RechargeHeadText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Top Up and Balances',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Add Recharge',
            style: TextStyle(color: DefaultColors.blueLightBase, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
