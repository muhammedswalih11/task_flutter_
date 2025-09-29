import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tasks_/features/biller/data/models.dart';

class BillList extends StatelessWidget {
  final Bill bill;
  final bool isPaid;
  BillList({required this.bill, required this.isPaid});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      margin: EdgeInsets.symmetric(horizontal: 16.r, vertical: 6.r),
      padding: EdgeInsets.symmetric(horizontal: 12.r, vertical: 12.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.asset(
                    bill.imageAsset,
                    width: 25.r,
                    height: 25.r,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.error, size: 30.sp);
                    },
                  ),
                ),
                SizedBox(width: 5.w),

                Text(
                  bill.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 2,
            child: Text(
              '${bill.amount.toStringAsFixed(2)} QAR',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
            ),
            // child: Text(
            //   '${NumberFormat('#,##0.00').format(bill.amount)} QAR',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
          ),
          Expanded(
            flex: 1,

            child: Align(
              alignment: AlignmentGeometry.centerRight,
              child: isPaid
                  ? CircleAvatar(
                      radius: 14.r,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15.sp,
                      ),
                    )
                  : OutlinedButton(
                      onPressed: () {},

                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 4.h,
                        ),
                        side: BorderSide(
                          color: Color.fromARGB(255, 12, 66, 111),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                      ),
                      child: Text(
                        'Pay',
                        style: TextStyle(
                          color: Color.fromARGB(255, 12, 66, 111),
                        ),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

class BillSection extends StatelessWidget {
  final String title;
  final List<Bill> bills;
  final bool isPaidSection;
  BillSection({
    required this.title,
    required this.bills,
    this.isPaidSection = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (bills.isEmpty) return SliverToBoxAdapter(child: SizedBox.shrink());
    return SliverList.list(
      children: [
        Padding(
          padding: EdgeInsetsGeometry.fromLTRB(20.r, 24.r, 20.r, 10.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Add New Biller',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
        ...bills.map((bill) => BillList(bill: bill, isPaid: isPaidSection)),
      ],
    );
  }
}

class RechargeAndBalancesSection extends StatelessWidget {
  const RechargeAndBalancesSection();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.r, bottom: 10.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recharge and Balances',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Add Recharge',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.r),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 10.r,
                          backgroundImage: AssetImage(
                            'assets/images/vodafone.png',
                          ),
                        ),
                        SizedBox(width: 5.w),

                        Text('Vodafone'),
                      ],
                    ),

                    Text('Mobile Recharge'),
                  ],
                ),
                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '23.00 QAR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(
                          color: Color.fromARGB(255, 12, 66, 111),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.r,
                          vertical: 12.r,
                        ),
                      ),
                      child: Text(
                        'Recharge',
                        style: TextStyle(
                          color: Color.fromARGB(255, 12, 66, 111),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ToggleWidget extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const ToggleWidget({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
        decoration: BoxDecoration(
          color: selected ? Color.fromARGB(255, 12, 66, 111) : Colors.white,
          borderRadius: BorderRadius.circular(20.r),

          border: Border.all(
            color: selected ? Colors.white : Color.fromARGB(255, 12, 66, 111),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: selected ? Colors.white : Color.fromARGB(255, 12, 66, 111),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class BottomCustomWidget extends StatelessWidget {
  final List<String> iconpath;
  final List<List<String>> labels;
  BottomCustomWidget({required this.iconpath, required this.labels, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(iconpath.length, (index) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Image.asset(iconpath[index]),
            ),
            SizedBox(height: 5.h),
            Text(labels[index][0]),
            Text(labels[index][1]),
          ],
        );
      }),
    );
  }
}
