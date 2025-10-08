import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
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
    SizeConfig.init(context);

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
        preferredSize: Size.fromHeight(SizeConfig.screenHeight * 0.12),
        child: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          title: Text(
            'Customize Widgets',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 8, 73, 126),
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 184, 220, 236), Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(SizeConfig.screenWidth * 0.040),
              topRight: Radius.circular(SizeConfig.screenWidth * 0.040),
            ),
            border: Border(top: BorderSide(color: Colors.blue.shade50)),
          ),
          child: ListView.builder(
            itemCount: sectionList.length,
            itemBuilder: (context, index) {
              final item = sectionList[index];
              switch (item['type']) {
                case 'header':
                  return Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight * 0.036,
                      // bottom: SizeConfig.screenHeight * 0.015,
                      left: SizeConfig.screenWidth * 0.04,
                    ),
                    child: Text(
                      item['title'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.screenWidth * 0.048,
                      ),
                    ),
                  );

                case 'card':
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeConfig.screenHeight * 0.012,
                    ),
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
                      top: SizeConfig.screenHeight * 0.045,
                      bottom: SizeConfig.screenHeight * 0.02,
                    ),
                    child: DoneButton(),
                  );

                default:
                  return SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }
}
