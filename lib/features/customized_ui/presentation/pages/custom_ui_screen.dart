import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/controllers/providers.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/active_bill_section.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/card_spend_section.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/ccbill_section.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/progressbar_section.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/rewards_large.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/cardsections.dart';

class customized_ui extends StatelessWidget {
  const customized_ui({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
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
                colors: [
                  Color.fromARGB(255, 212, 226, 243),
                  Color.fromARGB(255, 255, 255, 255),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: SizeConfig.screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              border: Border(top: BorderSide(color: Colors.blue.shade50)),
            ),
            padding: EdgeInsets.all(SizeConfig.screenWidth * 0.042),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'Pinned',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.screenWidth * 0.048,
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.015),
                CardSections(
                  stateProvider: dropdown1Provider,
                  title: 'Your Active Billers',
                  dropdownChild: ActiveBillerSection2(),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.012),
                CardSections(
                  stateProvider: dropdown2Provider,
                  title: 'Card Spends',
                  dropdownChild: CardSpendSection(),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.012),
                CardSections(
                  stateProvider: dropdown3Provider,
                  title: 'Credit Card Bills',
                  dropdownChild: CcBillSection(),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.036),
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'Unpinned',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.screenWidth * 0.048,
                    ),
                  ),
                ),
                CardSections(
                  title: 'Rewards (Condensed)',
                  dropdownChild: ProgressBarSection(),
                  stateProvider: dropdown4Provider,
                  showTriallingIcon: false,
                  isblueIcon: false,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.012),
                CardSections(
                  title: 'Rewards(Large)',
                  dropdownChild: RewardsLaregSection(),
                  stateProvider: dropdown5Provider,
                  showTriallingIcon: false,
                  isblueIcon: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
