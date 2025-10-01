import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/customized_ui/datas/models.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/bill_card_section.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/cardsections.dart';

class ActiveBillerSection2 extends StatelessWidget {
  const ActiveBillerSection2({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BillCardModel> billCards = [
      BillCardModel(
        imageUrl: 'assets/images/netflix.png',
        title: 'Netflix',
        amount: '23 QAR',
        trialIcon: Icons.arrow_upward,
      ),
      BillCardModel(
        imageUrl: 'assets/images/prime.png',
        title: 'Prime Video',
        amount: '16.24 QAR',
        trialIcon: Icons.arrow_upward,
      ),
      BillCardModel(
        imageUrl: 'assets/images/github.png',
        title: 'Git Hub',
        amount: '12.43 QAR',
        trialIcon: Icons.arrow_upward,
      ),
      BillCardModel(
        imageUrl: 'assets/images/vodafone.png',
        title: 'Vodafone',
        amount: '16.24 QAR',
        trialIcon: Icons.arrow_upward,
      ),
    ];
    return Container(
      height: SizeConfig.screenHeight * 0.18,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 226, 228, 230),
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.035),
      ),
      padding: EdgeInsets.all(SizeConfig.screenWidth * 0.033),
      child: SizedBox(
        height: SizeConfig.screenHeight * 0.21,
        width: SizeConfig.screenWidth,

        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: billCards.length,
          itemBuilder: (context, index) {
            final card = billCards[index];
            return Padding(
              padding: EdgeInsets.only(right: SizeConfig.screenWidth * 0.03),
              child: BillCards(
                imageUrl: card.imageUrl,
                title: card.title,
                amount: card.amount,
                trialicon: card.trialIcon,
              ),
            );
          },
        ),
      ),
    );
  }
}
