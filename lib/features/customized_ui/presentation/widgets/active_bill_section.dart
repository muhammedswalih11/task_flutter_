import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/customized_ui.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/customized_ui/datas/models.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/bill_card_section.dart';

class ActiveBillerSection2 extends StatelessWidget {
  const ActiveBillerSection2({super.key});

  @override
  Widget build(BuildContext context) {
    final s = DefaultStrings.instance;
    final List<BillCardModel> billCards = [
      BillCardModel(
        imageUrl: 'assets/images/netflix.png',
        title: s.billBrandName1,
        amount: s.activeNetflixAmount,
        trialIcon: Icons.arrow_upward,
      ),
      BillCardModel(
        imageUrl: 'assets/images/prime.png',
        title: s.billBrandName2,
        amount: s.activePrimeBill,
        trialIcon: Icons.arrow_upward,
      ),
      BillCardModel(
        imageUrl: 'assets/images/github.png',
        title: s.billBrandName3,
        amount: s.activeGitBill,
        trialIcon: Icons.arrow_upward,
      ),
      BillCardModel(
        imageUrl: 'assets/images/vodafone.png',
        title: s.billBrandName4,
        amount: s.activeVodafoneBill,
        trialIcon: Icons.arrow_upward,
      ),
    ];

    return SizedBox(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: SizeConfig.screenWidth * 0.04,
                left: SizeConfig.screenWidth * 0.04,
              ),
              child: Container(
                height: SizeConfig.screenHeight * 0.18,

                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,

                  borderRadius: BorderRadius.circular(
                    SizeConfig.screenWidth * 0.035,
                  ),
                  border: Border.all(
                    color: Colors.blueGrey.shade200,
                    width: 0.6,
                  ),
                ),
              ),
            ),

            Positioned(
              top: SizeConfig.screenHeight * 0.015,
              left: 0,
              right: 0,
              child: SizedBox(
                width: double.infinity,
                height: SizeConfig.screenHeight * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: billCards.length,
                  itemBuilder: (context, index) {
                    final card = billCards[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 0.076,
                      ),
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
            ),
          ],
        ),
      ),
    );
  }
}
