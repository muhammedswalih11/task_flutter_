import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/colors.dart';
// Removed unused imports after refactor to synchronous data

class ToggleWidget extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const ToggleWidget({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.02,
          vertical: screenWidth * 0.02,
        ),
        decoration: BoxDecoration(
          color: selected ? DefaultColors.blue_600 : DefaultColors.white,
          borderRadius: BorderRadius.circular(screenWidth * 0.05),

          border: Border.all(
            color: selected ? DefaultColors.white : DefaultColors.blue_600,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: selected ? DefaultColors.white : DefaultColors.blue_600,
            fontWeight: FontWeight.w500,
            fontSize: screenWidth * 0.035,
          ),
        ),
      ),
    );
  }
}

class BottomCustomWidget extends StatelessWidget {
  final List<String> iconpath;
  final List<List<String>> labels;
  BottomCustomWidget({required this.iconpath, required this.labels, super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(iconpath.length, (index) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(screenWidth * 0.04),
              decoration: BoxDecoration(
                // color: Colors.black,
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(screenWidth * 0.0375),
              ),
              child: Image.asset(
                iconpath[index],
                width: screenWidth * 0.05,
                height: screenWidth * 0.05,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: AlignmentGeometry.center,
              child: Text(
                labels[index][0],
                style: TextStyle(fontSize: screenWidth * 0.030),
              ),
            ),
            Text(
              labels[index][1],
              style: TextStyle(
                fontSize: screenWidth * 0.030,
                color: Colors.black,
              ),
            ),
          ],
        );
      }),
    );
  }
}
