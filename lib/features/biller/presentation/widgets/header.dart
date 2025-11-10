import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class Header1 extends StatelessWidget {
  const Header1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        Text(
          'Billers',
          style: TextStyle(
            fontSize: screenWidth * 0.05,
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
          style: TextStyle(
            fontSize: screenWidth * 0.05,

            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: screenWidth * 0.02),
        Text(
          '4 Bills due',
          style: TextStyle(
            fontSize: screenWidth * 0.05,
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
      style: TextStyle(fontSize: screenWidth * 0.035),
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
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.045,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Add Recharge',
            style: TextStyle(
              color: DefaultColors.blueLightBase,
              fontSize: screenWidth * 0.035,
            ),
          ),
        ),
      ],
    );
  }
}
