import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/biller/presentation/controllers/providers.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/bill_section.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/header.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/recharge_section.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/search_bar.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/toggles_bottom_section.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/togglesection.dart';

class BillsScreen extends ConsumerWidget {
  const BillsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeBills = ref.watch(filteredActiveBillProvider);
    final paidBills = ref.watch(filteredPaidBillsProvider);
    final selectedToggle = ref.watch(toggleProvider);
    SizeConfig.init(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 242, 242),
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  SizeConfig.screenWidth * 0.04,
                  SizeConfig.screenWidth * 0.1,
                  SizeConfig.screenWidth * 0.04,
                  SizeConfig.screenWidth * 0.04,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header1(),
                    SizedBox(height: SizeConfig.screenHeight * 0.015),
                    Header2(),

                    SizedBox(height: SizeConfig.screenHeight * 0.008),
                    SubHeader(),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.04,
                ),
                child: BillSearchBar(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.04,
                  vertical: SizeConfig.screenWidth * 0.03,
                ),
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

            SliverToBoxAdapter(child: RechargeAndBalancesSection()),
            SliverToBoxAdapter(
              child: BottomCustomWidget(
                iconpath: [
                  'assets/icons/Mobile.png',
                  'assets/icons/dth.png',
                  'assets/icons/broadband.png',
                  'assets/icons/phone.png',
                ],
                labels: [
                  ["Mobile", "Recharge"],
                  ["DTH", "Recharge"],
                  ["Broadband", "Recharge"],
                  ["Landline", "Recharge"],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
