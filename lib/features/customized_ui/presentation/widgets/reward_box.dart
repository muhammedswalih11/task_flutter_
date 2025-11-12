import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/colors.dart';

// class RewardBox extends StatelessWidget {
//   final String type;
//   final String title;
//   final double progressPercentage;
//   final VoidCallback onTap;
//   final double width;
//   const RewardBox({
//     super.key,
//     required this.type,
//     required this.title,
//     required this.onTap,
//     this.progressPercentage = 0.0,
//     this.width = 180,
//   });
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     final isWhiteBox = type == 'white';

//     return Container(
//       width: screenWidth * 0.5,
//       height: screenHeight * 0.2,
//       padding: EdgeInsets.all(screenWidth * 0.02),
//       decoration: BoxDecoration(
//         color: type == 'white' ? DefaultColors.gray0F : null,
//         gradient: type == 'gradient'
//             ? LinearGradient(
//                 // colors: [Colors.blue.shade700, Colors.blue.shade400],
//                 colors: [DefaultColors.blue, DefaultColors.blue_100],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               )
//             : null,
//         borderRadius: BorderRadius.circular(screenWidth * 0.03),
//       ),
//       child: Stack(
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 title,
//                 style: TextStyle(
//                   color: type == 'white'
//                       ? DefaultColors.black
//                       : DefaultColors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: isWhiteBox
//                       ? 11.00
//                       : screenWidth * 0.045,
//                 ),
//               ),
//               SizedBox(height: screenHeight * 0.015),
//               if (isWhiteBox) ...[
//                 Container(
//                   height: screenHeight * 0.01,
//                   decoration: BoxDecoration(
//                     color: const Color.fromARGB(255, 195, 236, 248),
//                     borderRadius: BorderRadius.circular(screenWidth * 0.025),
//                   ),
//                   child: Align(
//                     alignment: Alignment.centerLeft,
//                     child: FractionallySizedBox(
//                       alignment: Alignment.centerLeft,
//                       widthFactor: progressPercentage,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: DefaultColors.blue_200,
//                           borderRadius: BorderRadius.circular(
//                             screenWidth * 0.025,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(child: Container()),
//                 Align(
//                   alignment: Alignment.bottomCenter,
//                   child: MaterialButton(
//                     minWidth: (width * screenWidth / 360) - screenWidth * 0.08,
//                     height: screenHeight * 0.038,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(screenWidth * 0.045),
//                       side: const BorderSide(color: DefaultColors.blue),
//                     ),
//                     onPressed: onTap,
//                     child: Text(
//                       'Collect Now',
//                       style: TextStyle(fontSize: 11.5),
//                     ),
//                   ),
//                 ),
//               ] else ...[
//                 Expanded(child: Container()),
//                 Align(
//                   alignment: Alignment.bottomCenter,
//                   child: InkWell(
//                     child: Container(
//                       height: screenHeight * 0.04,
//                       width: screenWidth * 0.36,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(
//                           screenWidth * 0.045,
//                         ),
//                       ),
//                       child: Image.asset(
//                         'assets/images/collect.png',
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ],
//           ),
//           if (!isWhiteBox) ...[
//             StarWidget(
//               size: screenWidth * 0.045,
//               right: screenWidth * 0.006,
//               top: screenHeight * 0.002,
//             ),
//             StarWidget(
//               size: 22.00,
//               right: screenWidth * 0.068,
//               top: screenHeight * 0.010,
//             ),
//             StarWidget(
//               size: 32.00,
//               right: screenWidth * 0.007,
//               top: screenHeight * 0.030,
//             ),
//           ],
//         ],
//       ),
//     );
//   }
// }

class RewardBox extends StatelessWidget {
  final String type;
  final String title;
  final double progressPercentage;
  final VoidCallback onTap;
  final double width;

  const RewardBox({
    super.key,
    required this.type,
    required this.title,
    required this.onTap,
    this.progressPercentage = 0.0,
    this.width = 180,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isWhiteBox = type == 'white';

    return Container(
      width: screenWidth * 0.5,
      height: screenHeight * 0.22,
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: isWhiteBox ? DefaultColors.gray0F : null,
        gradient: !isWhiteBox
            ? LinearGradient(
                colors: [DefaultColors.blue, DefaultColors.blue_100],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Add top space for gradient box title
              if (!isWhiteBox) SizedBox(height: screenHeight * 0.006),

              Text(
                title,
                style: TextStyle(
                  color: isWhiteBox ? DefaultColors.black : DefaultColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: isWhiteBox ? 13.00 : 18,
                ),
              ),

              SizedBox(height: screenHeight * 0.015),

              // White box: progress + button
              if (isWhiteBox) ...[
                Container(
                  height: screenHeight * 0.01,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 195, 236, 248),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FractionallySizedBox(
                      widthFactor: progressPercentage,
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          color: DefaultColors.blue_200,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),

                const Spacer(),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: screenWidth * 0.36, // same width for all buttons
                    height: screenHeight * 0.038,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: DefaultColors.blue),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      onPressed: onTap,
                      child: Text(
                        'Collect Now',
                        style: TextStyle(
                          fontSize: 12,
                          color: DefaultColors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
              ] else ...[
                const Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: screenWidth * 0.36,
                    height: screenHeight * 0.04,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(screenWidth * 0.045),
                      onTap: onTap,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          'assets/images/collect.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),

          if (!isWhiteBox) ...[
            Positioned(
              right: screenWidth * 0.006,
              top: screenHeight * 0.002,
              child: _Star(size: screenWidth * 0.045),
            ),
            Positioned(
              right: screenWidth * 0.068,
              top: screenHeight * 0.010,
              child: _Star(size: 22.00),
            ),
            Positioned(
              right: screenWidth * 0.007,
              top: screenHeight * 0.030,
              child: _Star(size: 32.00),
            ),
          ],
        ],
      ),
    );
  }
}

class _Star extends StatelessWidget {
  final double size;
  const _Star({required this.size});
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star, color: Colors.white.withOpacity(0.3), size: size);
  }
}
