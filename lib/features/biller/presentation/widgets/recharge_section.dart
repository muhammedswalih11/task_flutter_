import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/biller/presentation/controllers/providers.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/amount_recharge.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/header.dart';

class RechargeAndBalancesSection extends ConsumerWidget {
  const RechargeAndBalancesSection();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rechargeCardsAsync = ref.watch(rechargeCardProvider);
    final s = DefaultStrings.instance;
    return Padding(
      padding: EdgeInsets.all(SizeConfig.screenWidth * 0.04),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.screenWidth * 0.01,
              bottom: SizeConfig.screenWidth * 0.025,
            ),
            child: RechargeHeadText(),
          ),
          // Container(
          //   padding: EdgeInsets.all(SizeConfig.screenWidth * 0.05),
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(
          //       SizeConfig.screenWidth * 0.04,
          //     ),
          //   ),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Row(
          //             children: [
          //               CircleAvatar(
          //                 radius: SizeConfig.screenWidth * 0.025,
          //                 backgroundImage: AssetImage(
          //                   'assets/images/vodafone.png',
          //                 ),
          //               ),
          //               SizedBox(width: SizeConfig.screenHeight * 0.012),

          //               Text(
          //                 s.billBrandName4,
          //                 style: TextStyle(
          //                   fontSize: SizeConfig.screenWidth * 0.035,
          //                 ),
          //               ),
          //             ],
          //           ),

          //           Text(
          //             s.rechargeTypeText,
          //             style: TextStyle(
          //               fontSize: SizeConfig.screenWidth * 0.035,
          //             ),
          //           ),
          //         ],
          //       ),
          //       SizedBox(height: SizeConfig.screenHeight * 0.025),
          //       AmountRecharge(),
          //     ],
          //   ),
          // ),
          rechargeCardsAsync.when(
            data: (cards) => SizedBox(
              height: SizeConfig.screenHeight * 0.17,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return RechargeCard(model: cards[index]);
                },
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(child: Text('Failed to load cards')),
          ),
        ],
      ),
    );
  }
}
