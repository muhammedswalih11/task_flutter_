import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class pointBox extends StatelessWidget {
  final double height;
  final double width;
  final double iconSize;
  final double imageSize;
  final double fontSize;
  final bool showBorder;
  const pointBox({
    this.height = 50,
    this.width = 50,
    this.fontSize = 14,
    this.iconSize = 15,
    this.imageSize = 17,
    this.showBorder = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: DefaultColors.blue_200,
        borderRadius: BorderRadius.circular(screenWidth * 0.03),
        border: showBorder
            ? Border.all(color: DefaultColors.blue_400, width: 1)
            : null,
      ),
      padding: EdgeInsets.all(screenWidth * 0.012),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '150',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontSize),
          ),
          Row(
            children: [
              Icon(Icons.add, size: iconSize, color: DefaultColors.black),
              SizedBox(width: screenWidth * 0.01),
              Image.asset(
                'assets/images/coins.png',
                width: imageSize,
                height: imageSize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
