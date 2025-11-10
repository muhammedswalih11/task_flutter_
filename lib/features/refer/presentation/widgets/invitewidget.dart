import 'package:flutter/material.dart';

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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth * 0.2,
      child: Column(
        children: [
          Container(
            width: screenWidth * 0.12,
            height: screenHeight * 0.06,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.015),
              child: Icon(icon, size: screenWidth * 0.08),
            ),
          ),
          SizedBox(height: screenHeight * 0.008),
          SizedBox(
            width: screenWidth * 0.2,
            child: Column(
              children: [
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenWidth * 0.03,
                    color: Colors.black,
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
        Invitewidget(
          color: Colors.black,
          icon: Icons.help,
          label: 'How to\nrefer',
        ),
        Invitewidget(
          // color: Colors.black,
          color: Colors.grey.shade200,
          icon: Icons.call,
          label: 'Invite via\nWhatsapp',
        ),
        Invitewidget(
          color: Colors.black,
          icon: Icons.qr_code,
          label: 'Invite via\nreferral QR',
        ),
        Invitewidget(
          color: Colors.black,
          icon: Icons.copy,
          label: 'Referral\nCode',
        ),
      ],
    );
  }
}
