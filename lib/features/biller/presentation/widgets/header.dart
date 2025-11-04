import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

final s = DefaultStrings.instance;

class Header1 extends StatelessWidget {
  const Header1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        Text(
          s.billerTitle,
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
          s.headerA,
          style: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.05,
            // color: Colors.black,
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: SizeConfig.screenWidth * 0.02),
        Text(
          s.headerB,
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
      s.subHeader,
      style: TextStyle(
        fontSize: SizeConfig.screenWidth * 0.035,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
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
          s.rechargeSectionTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.screenWidth * 0.045,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            s.addRechargeText,
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
