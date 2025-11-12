import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class Header1 extends StatelessWidget {
  const Header1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        SizedBox(width: 12),
        Text(
          'Billers',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: DefaultColors.blue4,
          ),
        ),
      ],
    );
  }
}

class Header2 extends StatelessWidget {
  const Header2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
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
    );
  }
}

class SubHeader extends StatelessWidget {
  const SubHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Text(
      'Pay and Manage Billers and Recharges',
      style: TextStyle(fontSize: 12.5),
    );
  }
}

class RechargeHeadText extends StatelessWidget {
  const RechargeHeadText({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
            style: TextStyle(
              color: DefaultColors.blueLightBase,
              fontSize: 12.5,
            ),
          ),
        ),
      ],
    );
  }
}
