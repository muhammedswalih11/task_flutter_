import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/controllers/providers.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/widgets.dart';

class Ui_Home extends StatelessWidget {
  const Ui_Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'Pinned',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                SizedBox(height: 18.h),
                CardSections(
                  stateProvider: dropdown1Provider,
                  title: 'Your Active Billers',
                  dropdownChild: ActiveBillerSection2(),
                ),
                SizedBox(height: 10.h),
                CardSections(
                  stateProvider: dropdown2Provider,
                  title: 'Card Spends',
                  dropdownChild: CardSpendSection(),
                ),
                SizedBox(height: 10.h),
                CardSections(
                  stateProvider: dropdown3Provider,
                  title: 'Credit Card Bills',
                  dropdownChild: CcBillSection(),
                ),
                SizedBox(height: 30.h),
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'Unpinned',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
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
                SizedBox(height: 10.h),
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
