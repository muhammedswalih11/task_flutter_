import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tasks_/features/biller/presentation/controllers/providers.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/customwidget.dart';

class BillsScreen extends ConsumerWidget {
  const BillsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeBills = ref.watch(filteredActiveBillProvider);
    final paidBills = ref.watch(filteredPaidBillsProvider);
    final selectedToggle = ref.watch(toggleProvider);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 242, 242),
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.r, 40.r, 16.r, 16.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () => Navigator.pop(context),
                        ),
                        Text(
                          "Billers",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 12, 66, 111),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),

                    Row(
                      children: [
                        Text(
                          "You have ",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "4 bills due",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.h),

                    Text(
                      "Pay and manage Billers and Recharges",
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.r),
                child: TextField(
                  onChanged: (query) =>
                      ref.read(CurrentSearchProvider.notifier).state = query,
                  decoration: InputDecoration(
                    hintText: 'Search Billers , Recharges and More..',
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 12.r),
                child: Row(
                  children: [
                    ToggleWidget(
                      label: 'All Bills (7)',
                      selected: selectedToggle == 0,
                      onTap: () => ref.read(toggleProvider.notifier).state = 0,
                    ),
                    SizedBox(width: 12.r),
                    ToggleWidget(
                      label: "Bills and Recharges (2)",
                      selected: selectedToggle == 1,
                      onTap: () => ref.read(toggleProvider.notifier).state = 1,
                    ),
                  ],
                ),
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
