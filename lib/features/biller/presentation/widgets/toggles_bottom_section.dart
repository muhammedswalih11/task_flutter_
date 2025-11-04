import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/biller/data/models.dart';

// class ToggleWidget extends StatelessWidget {
//   final String label;
//   final bool selected;
//   final VoidCallback onTap;

//   const ToggleWidget({
//     required this.label,
//     required this.selected,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: EdgeInsets.symmetric(
//           horizontal: SizeConfig.screenWidth * 0.02,
//           vertical: SizeConfig.screenWidth * 0.02,
//         ),
//         decoration: BoxDecoration(
//           color: selected ? Color.fromARGB(255, 12, 66, 111) : Colors.white,
//           borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.05),

//           border: Border.all(
//             color: selected ? Colors.white : Color.fromARGB(255, 12, 66, 111),
//           ),
//         ),
//         child: Text(
//           label,
//           style: TextStyle(
//             color: selected ? Colors.white : Color.fromARGB(255, 12, 66, 111),
//             fontWeight: FontWeight.w500,
//             fontSize: SizeConfig.screenWidth * 0.035,
//           ),
//         ),
//       ),
//     );
//   }
// }

class ToggleWidget extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const ToggleWidget({
    required this.label,
    required this.selected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final colors = Theme.of(context).colorScheme;

    // 🌙 Dark-mode colors
    final darkSelectedColor = const Color(0xFF1976D2); // a nice dark blue
    final darkUnselectedColor = const Color(0xFF1E1E1E); // card-like dark grey
    final darkTextColor = Colors.white;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth * 0.02,
          vertical: SizeConfig.screenWidth * 0.02,
        ),
        decoration: BoxDecoration(
          color: selected
              ? (brightness == Brightness.dark
                    ? darkSelectedColor
                    : const Color.fromARGB(255, 12, 66, 111))
              : (brightness == Brightness.dark
                    ? darkUnselectedColor
                    : Colors.white),
          borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.05),
          border: Border.all(
            color: selected
                ? (brightness == Brightness.dark ? Colors.white : Colors.white)
                : (brightness == Brightness.dark
                      ? Colors.white70
                      : const Color.fromARGB(255, 12, 66, 111)),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: selected
                ? (brightness == Brightness.dark ? darkTextColor : Colors.white)
                : (brightness == Brightness.dark
                      ? Colors.white70
                      : const Color.fromARGB(255, 12, 66, 111)),
            fontWeight: FontWeight.w500,
            fontSize: SizeConfig.screenWidth * 0.035,
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(iconpath.length, (index) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(SizeConfig.screenWidth * 0.04),
              decoration: BoxDecoration(
                // color: Colors.white,
                color: Theme.of(context).colorScheme.primaryFixedDim,
                borderRadius: BorderRadius.circular(
                  SizeConfig.screenWidth * 0.0375,
                ),
              ),
              child: Image.asset(
                iconpath[index],
                width: SizeConfig.screenWidth * 0.05,
                height: SizeConfig.screenWidth * 0.05,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            SizedBox(height: 5),
            Text(
              labels[index][0],
              style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.030,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            Text(
              labels[index][1],
              style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.030,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ],
        );
      }),
    );
  }
}
