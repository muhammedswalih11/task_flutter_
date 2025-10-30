import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
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
    final activeBillAsync = ref.watch(filteredActiveBillProvider);

    final paidBillAsync = ref.watch(filteredPaidBillsProvider);

    final selectedToggle = ref.watch(toggleProvider);
    final s = DefaultStrings.instance;
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
            activeBillAsync.when(
              data: (bills) => BillSection(
                title: s.activeBillTitle,
                bills: bills,
                isPaidSection: false,
              ),
              loading: () => SliverList.list(
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.screenWidth * 0.020,
                      vertical: SizeConfig.screenHeight * 0.008,
                    ),
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        height: SizeConfig.screenHeight * 0.075,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            SizeConfig.screenWidth * 0.04,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              error: (e, _) => SliverToBoxAdapter(
                child: Center(child: Text("Error loading active bills")),
              ),
            ),
            paidBillAsync.when(
              data: (bills) => BillSection(
                title: s.paidBillTitle,
                bills: bills,
                isPaidSection: true,
              ),
              loading: () => SliverList.list(
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.screenWidth * 0.020,
                      vertical: SizeConfig.screenHeight * 0.008,
                    ),
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        height: SizeConfig.screenHeight * 0.075,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            SizeConfig.screenWidth * 0.04,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              error: (e, _) => SliverToBoxAdapter(
                child: Center(child: Text("Error loading active bills")),
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(thickness: 1, color: Colors.grey[400]),
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
                  [s.btMobileText, s.rechargeButtonText],
                  [s.btDthtext, s.rechargeButtonText],
                  [s.btBroadbandtext, s.rechargeButtonText],
                  [s.btLandlineText, s.rechargeButtonText],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
