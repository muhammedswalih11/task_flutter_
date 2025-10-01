import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class pointBox extends StatelessWidget {
  final double height;
  final double width;
  final double iconSize;
  final double imageSize;
  final double fontSize;
  const pointBox({
    this.height = 50,
    this.width = 50,
    this.fontSize = 14,
    this.iconSize = 15,
    this.imageSize = 17,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 195, 236, 248),
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.03),
      ),
      padding: EdgeInsets.all(SizeConfig.screenWidth * 0.012),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '150',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontSize),
          ),
          Row(
            children: [
              Icon(Icons.add, size: iconSize),
              SizedBox(width: SizeConfig.screenWidth * 0.01),
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
