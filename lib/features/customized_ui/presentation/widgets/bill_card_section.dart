import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/colors.dart';

class BillCards extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String amount;
  final IconData trialicon;
  // final Color headerColor;

  const BillCards({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.amount,
    // this.headerColor =colorScheme.outline,
    required this.trialicon,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      child: Container(
        width: screenWidth * 0.35,
        decoration: BoxDecoration(
          // color: Colors.black,
          color: DefaultColors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            // color: Colors.blueGrey.shade200,
            color: DefaultColors.grayMedBase,
            width: 0.6,
          ),
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              decoration: BoxDecoration(
                color: DefaultColors.dashboardLightBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 11.00,
                    backgroundImage: AssetImage(imageUrl),
                  ),
                  Spacer(),
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: Row(
                children: [
                  Text(
                    amount,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Spacer(),
                  Transform.rotate(
                    angle: 0.5,
                    child: Icon(trialicon, size: 18.05),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
