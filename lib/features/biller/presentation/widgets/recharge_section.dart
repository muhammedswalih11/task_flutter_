import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/features/biller/presentation/controllers/providers.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/recharge_card.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/header.dart';

class RechargeAndBalancesSection extends ConsumerWidget {
  const RechargeAndBalancesSection();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rechargeCards = ref.watch(rechargeCardProvider);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.04,
            bottom: screenWidth * 0.025,
            right: screenWidth * 0.04,
          ),
          child: RechargeHeadText(),
        ),

        SizedBox(
          height: screenHeight * 0.17,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: rechargeCards.length,
            itemBuilder: (context, index) {
              return RechargeCard(model: rechargeCards[index]);
            },
          ),
        ),
      ],
    );
  }
}
