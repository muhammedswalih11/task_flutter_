import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/colors.dart';

import 'package:flutter_tasks_/features/customized_ui/domain/customized_ui_service.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/bill_card_section.dart';

class ActiveBillerSection2 extends StatelessWidget {
  ActiveBillerSection2({super.key});

  final service = CustomizedUiService();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final billCards = service.getActiveBillers();
    return SizedBox(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: screenWidth * 0.04,
                left: screenWidth * 0.04,
              ),
              child: Container(
                height: screenHeight * 0.18,
                decoration: BoxDecoration(
                  color: DefaultColors.dashboardGray,
                  borderRadius: BorderRadius.circular(screenWidth * 0.035),
                  border: Border.all(
                    color: DefaultColors.grayMedBase,
                    width: 0.6,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.015,
              left: 0,
              right: 0,
              child: SizedBox(
                width: double.infinity,
                height: screenHeight * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: billCards.length,
                  itemBuilder: (context, index) {
                    final card = billCards[index];
                    return Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.076),
                      child: BillCards(
                        imageUrl: card['imageUrl'],
                        title: card['title'],
                        amount: card['amount'],
                        trialicon: card['trialIcon'],
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
