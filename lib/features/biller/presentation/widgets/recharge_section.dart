import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/biller/presentation/controllers/providers.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/recharge_card.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/header.dart';

class RechargeAndBalancesSection extends ConsumerWidget {
  const RechargeAndBalancesSection();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rechargeCardsAsync = ref.watch(rechargeCardProvider);
    final s = DefaultStrings.instance;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.screenWidth * 0.04,
            bottom: SizeConfig.screenWidth * 0.025,
            right: SizeConfig.screenWidth * 0.04,
          ),
          child: RechargeHeadText(),
        ),

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
    );
  }
}
