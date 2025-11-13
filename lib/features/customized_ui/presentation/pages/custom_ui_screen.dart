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
        'title': 'Rewards (Large)',
        'widget': RewardsLaregSection(),
        'provider': dropdown5Provider,
        'showTrailingIcon': false,
        'isBlueIcon': false,
      },
      {'type': 'button'},
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(gradient: DefaultColors.appBarGradient),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Customize Widgets',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Container(
                width: double.infinity,

                constraints: BoxConstraints(minHeight: screenHeight * 0.90),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: sectionList.length,
                  itemBuilder: (context, index) {
                    final item = sectionList[index];
                    switch (item['type']) {
                      case 'header':
                        return Padding(
                          padding: const EdgeInsets.only(top: 50, left: 20),
                          child: Text(
                            item['title'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        );
                      case 'card':
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: CardSections(
                            title: item['title'],
                            dropdownChild: item['widget'],
                            stateProvider: item['provider'],
                            showTriallingIcon: item['showTrailingIcon'] ?? true,
                            isblueIcon: item['isBlueIcon'] ?? true,
                          ),
                        );
                      case 'button':
                        return const Padding(
                          padding: EdgeInsets.only(top: 140, bottom: 10),
                          child: DoneButton(),
                        );
                      default:
                        return const SizedBox.shrink();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
