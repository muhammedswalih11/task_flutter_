import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/features/biller/presentation/controllers/providers.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/bill_section.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/header.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/recharge_section.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/search_bar.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/toggles_bottom_section.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/togglesection.dart';

import '../../../../core/utils/colors.dart';

class BillsScreen extends ConsumerWidget {
  const BillsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeBills = ref.watch(filteredActiveBillProvider);
    final paidBills = ref.watch(filteredPaidBillsProvider);

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 246, 242, 242),
      // backgroundColor: DefaultColors.blue_0,
      backgroundColor: DefaultColors.white,
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.fromLTRB(18, 50, 18, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header1(),
                    SizedBox(height: screenHeight * 0.015),
                    Header2(),

                    SizedBox(height: screenHeight * 0.008),
                    SubHeader(),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: BillSearchBar(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                child: Toggles(),
              ),
            ),
            BillSection(
              title: 'Your Active Bills',
              bills: activeBills,
              isPaidSection: false,
            ),
            BillSection(
              title: 'Your Paid Bills',
              bills: paidBills,
              isPaidSection: true,
            ),
            SliverToBoxAdapter(
              child: Divider(thickness: 1, color: DefaultColors.grayB3),
            ),
            SliverToBoxAdapter(child: RechargeAndBalancesSection()),
            SliverToBoxAdapter(child: SizedBox(height: screenHeight * 0.02)),

            SliverToBoxAdapter(
              child: BottomCustomWidget(
                iconpath: [
                  'assets/icons/Mobile.png',
                  'assets/icons/dth.png',
                  'assets/icons/broadband.png',
                  'assets/icons/phone.png',
                ],
                labels: [
                  ['Mobile', 'Recharge'],
                  ['DTH', 'Recharge'],
                  ['Broadband', 'Recharge'],
                  ['Landline', 'Recharge'],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
