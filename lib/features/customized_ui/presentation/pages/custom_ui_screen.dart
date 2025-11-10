import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tasks_/core/utils/colors.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/controllers/providers.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/active_bill_section.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/card_spend_section.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/ccbill_section.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/done_button.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/progressbar_section.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/rewards_large.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/cardsections.dart';

class CustomizedUI extends StatelessWidget {
  const CustomizedUI({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final List<Map<String, dynamic>> sectionList = [
      {'type': 'header', 'title': 'Pinned'},
      {
        'type': 'card',
        'title': 'Your Active Billers',
        'widget': ActiveBillerSection2(),
        'provider': dropdown1Provider,
      },
      {
        'type': 'card',
        'title': 'Card Spends',
        'widget': CardSpendSection(),
        'provider': dropdown2Provider,
      },
      {
        'type': 'card',
        'title': 'Credit Card Bills',
        'widget': CcBillSection(),
        'provider': dropdown3Provider,
      },
      {'type': 'header', 'title': 'Unpinned'},
      {
        'type': 'card',
        'title': 'Rewards (Condensed)',
        'widget': ProgressBarSection(),
        'provider': dropdown4Provider,
        'showTrailingIcon': false,
        'isBlueIcon': false,
      },
      {
        'type': 'card',
        'title': 'Rewards(Large)',
        'widget': RewardsLaregSection(),
        'provider': dropdown5Provider,
        'showTrailingIcon': false,
        'isBlueIcon': false,
      },
      {'type': 'button'},
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.12),
        child: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          title: const Text(
            'Customize Widgets',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(gradient: DefaultColors.appBarGradient),
          ),
        ),
      ),

      body: SafeArea(
        child: Container(
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(screenWidth * 0.040),
              topRight: Radius.circular(screenWidth * 0.040),
            ),
          ),
          child: ListView.builder(
            itemCount: sectionList.length,
            itemBuilder: (context, index) {
              final item = sectionList[index];
              switch (item['type']) {
                case 'header':
                  return Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.036,
                      left: screenWidth * 0.04,
                    ),
                    child: Text(
                      item['title'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.048,
                      ),
                    ),
                  );
                case 'card':
                  return Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.012),
                    child: CardSections(
                      title: item['title'],
                      dropdownChild: item['widget'],
                      stateProvider: item['provider'],
                      showTriallingIcon: item['showTrailingIcon'] ?? true,
                      isblueIcon: item['isBlueIcon'] ?? true,
                    ),
                  );
                case 'button':
                  return Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.045,
                      bottom: screenHeight * 0.02,
                    ),
                    child: const DoneButton(),
                  );
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }
}
