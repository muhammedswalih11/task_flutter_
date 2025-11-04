import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

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
    return SizedBox(
      child: Container(
        width: SizeConfig.screenWidth * 0.43,
        decoration: BoxDecoration(
          // color: Colors.white,
          color: Theme.of(context).colorScheme.primaryFixedDim,
          borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.035),
          border: Border.all(
            // color: Colors.blueGrey.shade200,
            color: Theme.of(context).colorScheme.outline,
            width: 0.6,
          ),
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 0.03,
                vertical: SizeConfig.screenWidth * 0.02,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondaryContainer,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(SizeConfig.screenWidth * 0.03),
                  topRight: Radius.circular(SizeConfig.screenWidth * 0.03),
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: SizeConfig.screenWidth * 0.030,
                    backgroundImage: AssetImage(imageUrl),
                  ),
                  Spacer(),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.screenWidth * 0.035,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 0.013,
                vertical: SizeConfig.screenWidth * 0.008,
              ),
              child: Row(
                children: [
                  Text(
                    amount,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.screenWidth * 0.035,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  Spacer(),
                  Transform.rotate(
                    angle: 0.5,
                    child: Icon(
                      trialicon,
                      size: SizeConfig.screenWidth * 0.055,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
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
