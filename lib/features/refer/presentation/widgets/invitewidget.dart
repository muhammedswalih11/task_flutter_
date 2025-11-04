import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/refer_page.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

final s = DefaultStrings.instance;

class Invitewidget extends StatelessWidget {
  final IconData icon;
  final String label;
  // final String sublabel;
  final Color color;
  const Invitewidget({
    required this.icon,
    required this.label,
    // required this.sublabel,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth * 0.2,
      child: Column(
        children: [
          Container(
            width: SizeConfig.screenWidth * 0.12,
            height: SizeConfig.screenHeight * 0.06,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryFixedDim,
              borderRadius: BorderRadius.circular(
                SizeConfig.screenWidth * 0.03,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.screenWidth * 0.015),
              child: Icon(icon, size: SizeConfig.screenWidth * 0.08),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.008),
          SizedBox(
            width: SizeConfig.screenWidth * 0.2,
            child: Column(
              children: [
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 0.03,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),

                  overflow: TextOverflow.ellipsis,
                ),
                // Text(
                //   sublabel,
                //   textAlign: TextAlign.center,
                //   style: TextStyle(fontSize: SizeConfig.screenWidth * 0.03),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InviteRow extends StatelessWidget {
  const InviteRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Invitewidget(color: Colors.white, icon: Icons.help, label: s.helpLink),
        Invitewidget(
          // color: Colors.white,
          color: Theme.of(context).colorScheme.primaryFixedDim,
          icon: Icons.call,
          label: s.whatsappLink,
        ),
        Invitewidget(color: Colors.white, icon: Icons.qr_code, label: s.qrLink),
        Invitewidget(color: Colors.white, icon: Icons.copy, label: s.copyLink),
      ],
    );
  }
}
