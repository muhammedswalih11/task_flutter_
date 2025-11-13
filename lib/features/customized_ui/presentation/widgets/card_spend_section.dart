import 'package:flutter/material.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/account_card.dart';

import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/card_spends_box.dart';

import '../../../../core/utils/colors.dart';

// class CardSpendSection extends StatelessWidget {
//   const CardSpendSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Padding(
//       padding: EdgeInsets.only(right: 18, left: 18),
//       child: Container(
//         decoration: BoxDecoration(
//           color: DefaultColors.blue_0,
//           borderRadius: BorderRadius.circular(15),
//           border: Border.all(color: DefaultColors.grayMedBase, width: 0.6),
//         ),
//         padding: EdgeInsets.only(top: 40, right: 12, left: 12, bottom: 20),
//         child: Stack(
//           clipBehavior: Clip.none,
//           alignment: AlignmentGeometry.topCenter,
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 // color: Colors.black,
//                 color: DefaultColors.white,
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(20),
//                 child: SizedBox(
//                   height: screenHeight * 0.24,
//                   child: CardSpendsBox(),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: -screenWidth * 0.04,
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(25),

//                   color: DefaultColors.white,
//                   border: Border.all(color: DefaultColors.grayMedBase),
//                 ),
//                 padding: EdgeInsets.all(5),
//                 child: Text(
//                   'Your recent spends',
//                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class CardSpendSection extends StatelessWidget {
  const CardSpendSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(right: 18, left: 18),
      child: Column(
        children: [
          AccountCard(),
          SizedBox(height: 3),
          Container(
            decoration: BoxDecoration(
              color: DefaultColors.blue_0,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: DefaultColors.grayMedBase, width: 0.6),
            ),
            padding: EdgeInsets.only(top: 40, right: 12, left: 12, bottom: 20),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentGeometry.topCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // color: Colors.black,
                    color: DefaultColors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: SizedBox(
                      height: screenHeight * 0.24,
                      child: CardSpendsBox(),
                    ),
                  ),
                ),
                Positioned(
                  top: -screenWidth * 0.04,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),

                      color: DefaultColors.white,
                      border: Border.all(color: DefaultColors.grayMedBase),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Your recent spends',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
