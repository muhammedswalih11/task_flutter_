import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class Header1 extends StatelessWidget {
  const Header1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        Text(
          "Billers",
          style: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.05,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 12, 66, 111),
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
    return Row(
      children: [
        Text(
          "You have ",
          style: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.05,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "4 bills due",
          style: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.05,
            color: Colors.blue,
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
    return Text(
      "Pay and manage Billers and Recharges",
      style: TextStyle(fontSize: SizeConfig.screenWidth * 0.035),
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
          'Recharge and Balances',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.screenWidth * 0.045,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Add Recharge',
            style: TextStyle(
              color: Colors.blue,
              fontSize: SizeConfig.screenWidth * 0.035,
            ),
          ),
        ),
      ],
    );
  }
}
