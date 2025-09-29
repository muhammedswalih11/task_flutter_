import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tasks_/features/customized_ui/datas/models.dart';
import 'package:hugeicons/hugeicons.dart';

//const Color.fromARGB(137, 61, 59, 59), border color
// Color.fromARGB(255, 226, 228, 230), conatienr color
class CardSections extends ConsumerWidget {
  final String title;
  final Widget dropdownChild;
  final StateProvider<bool> stateProvider;
  final bool showTriallingIcon;
  final bool isblueIcon;

  const CardSections({
    super.key,
    required this.title,
    required this.dropdownChild,
    required this.stateProvider,
    this.showTriallingIcon = true,
    this.isblueIcon = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isExpanded = ref.watch(stateProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  side: BorderSide(
                    color: const Color.fromARGB(137, 61, 59, 59),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: Row(
                    children: [
                      Transform.rotate(
                        angle: 0.5,
                        child: Icon(
                          Icons.push_pin,
                          color: isblueIcon ? Colors.blue : Colors.white,
                          shadows: [
                            Shadow(
                              offset: Offset(0, 0),
                              blurRadius: 3,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(title, style: TextStyle(fontSize: 18.sp)),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          ref.read(stateProvider.notifier).state = !isExpanded;
                        },
                        icon: Icon(
                          isExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (showTriallingIcon)
              HugeIcon(icon: HugeIcons.strokeRoundedDragDropHorizontal),
          ],
        ),
        if (isExpanded) dropdownChild,
      ],
    );
  }
}

class ActiveBillerSection2 extends StatelessWidget {
  const ActiveBillerSection2({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BillCardModel> billCards = [
      BillCardModel(
        imageUrl: 'assets/images/netflix.png',
        title: 'Netflix',
        amount: '23 QAR',
        trialIcon: Icons.arrow_upward,
      ),
      BillCardModel(
        imageUrl: 'assets/images/prime.png',
        title: 'Prime Video',
        amount: '16.24 QAR',
        trialIcon: Icons.arrow_upward,
      ),
      BillCardModel(
        imageUrl: 'assets/images/github.png',
        title: 'Git Hub',
        amount: '12.43',
        trialIcon: Icons.arrow_upward,
      ),
      BillCardModel(
        imageUrl: 'assets/images/vodafone.png',
        title: 'Vodafone',
        amount: '16.24',
        trialIcon: Icons.arrow_upward,
      ),
    ];
    return Container(
      height: 180.h,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 226, 228, 230),
        borderRadius: BorderRadius.circular(14),
      ),
      padding: EdgeInsets.all(13.r),
      child: SizedBox(
        height: 170.h,
        width: MediaQuery.of(context).size.width,

        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: billCards.length,
          itemBuilder: (context, index) {
            final card = billCards[index];
            return Padding(
              padding: EdgeInsets.only(right: 12.r),
              child: BillCards(
                imageUrl: card.imageUrl,
                title: card.title,
                amount: card.amount,
                trialicon: card.trialIcon,
              ),
            );
          },
        ),
      ),
    );
  }
}

class BillCards extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String amount;
  final IconData trialicon;
  final Color headerColor;

  const BillCards({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.amount,
    this.headerColor = const Color(0xFFE8F2FF),
    required this.trialicon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: 200.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.r),
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.r, vertical: 8.r),
              decoration: BoxDecoration(
                color: headerColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 15.r,
                    backgroundImage: AssetImage(imageUrl),
                  ),
                  Spacer(),
                  Text(title),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.r, vertical: 3.r),
              child: Row(
                children: [
                  Text(amount),
                  Spacer(),
                  Transform.rotate(angle: 0.5, child: Icon(trialicon)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardSpendSection extends StatelessWidget {
  const CardSpendSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 226, 228, 230),
        borderRadius: BorderRadius.circular(18.r),
      ),
      padding: EdgeInsets.all(24.r),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentGeometry.topCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(20.r),
              child: SizedBox(
                height: 250.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/netflix.png',
                          ),
                          radius: 15.r,
                        ),
                        SizedBox(width: 8.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Netflix',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Entertainment'),
                          ],
                        ),
                        Spacer(),
                        Text('QAR 2,636.41'),
                      ],
                    ),

                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/prime.png',
                          ),
                          radius: 15,
                        ),
                        SizedBox(width: 8.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prime',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Entertainment'),
                          ],
                        ),
                        Spacer(),
                        Text('QAR 636.31'),
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/github.png',
                          ),
                          radius: 15.r,
                        ),
                        SizedBox(width: 8.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Github',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Version Control'),
                          ],
                        ),
                        Spacer(),
                        Text('QAR 234.46'),
                      ],
                    ),
                    MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'View all spends',
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(width: 8.w),
                          Transform.rotate(
                            angle: 0.5,
                            child: Icon(Icons.arrow_upward, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -12,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(137, 61, 59, 59),
                ),
              ),
              padding: EdgeInsets.all(10.r),
              child: Text('Your recnet Spends'),
            ),
          ),
        ],
      ),
    );
  }
}

class CcBillSection extends StatelessWidget {
  const CcBillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 226, 228, 230),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(13.r),
        child: Container(
          padding: EdgeInsets.all(10.r),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'September',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Statement',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('QAR 2,636.41', style: TextStyle(fontSize: 18.sp)),
                  Text(
                    'Due on the 12th October',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              MaterialButton(
                height: double.minPositive,
                minWidth: double.minPositive,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(18.r),
                ),

                onPressed: () {},
                child: Text('Pay', style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PointsEarnCard extends StatelessWidget {
  const PointsEarnCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 246, 251, 252),
        borderRadius: BorderRadius.circular(20.r),
      ),
      padding: EdgeInsets.all(12.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/icons/chest.png',
            width: 20.w,
            height: 20.h,
            color: Colors.blue,
          ),

          Text(
            '1285 Reward Points earned',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          Transform.rotate(
            angle: 0.5,
            child: Icon(Icons.arrow_upward, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

class pointBox extends StatelessWidget {
  final double height;
  final double width;
  final double iconSize;
  final double imageSize;
  final double fontSize;
  const pointBox({
    this.height = 50,
    this.width = 50,
    this.fontSize = 14,
    this.iconSize = 15,
    this.imageSize = 17,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 195, 236, 248),
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.all(5.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '150',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontSize),
          ),
          Row(
            children: [
              Icon(Icons.add, size: iconSize),
              SizedBox(width: 4.w),
              Image.asset(
                'assets/images/coins.png',
                width: imageSize,
                height: imageSize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProgressBarSection extends StatelessWidget {
  ProgressBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 226, 228, 230),
        borderRadius: BorderRadius.circular(14.r),
      ),
      padding: EdgeInsets.all(14.r),
      child: Column(
        children: [
          PointsEarnCard(),
          SizedBox(height: 15.h),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(14.r),
            child: Column(
              children: [
                Row(
                  children: [
                    pointBox(height: 50.h, width: 50.w),
                    SizedBox(width: 10.w),

                    Text(
                      'claim upto 150 reward points\nafter reaching the\nnext transaction goal',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 20.h,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 195, 236, 248),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Align(
                          alignment: AlignmentGeometry.centerLeft,
                          child: FractionallySizedBox(
                            alignment: AlignmentGeometry.centerLeft,
                            widthFactor: 0.8,
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 84, 170, 240),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'QAR 240 AWAY',
                      style: TextStyle(fontWeight: FontWeight.bold),
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

class RewardBox extends StatelessWidget {
  final RewardBoxType type;
  final String title;
  final double progressPercentage;
  final VoidCallback onTap;
  final double width;

  const RewardBox({
    super.key,
    required this.type,
    required this.title,
    required this.onTap,
    this.progressPercentage = 0.0,
    this.width = 180,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 167.h,
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: type == RewardBoxType.white
            ? Color.fromARGB(255, 226, 228, 230)
            : null,
        gradient: type == RewardBoxType.gradient
            ? LinearGradient(
                colors: [Colors.blue.shade700, Colors.blue.shade400],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(
              color: type == RewardBoxType.white ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
          ),
          if (type == RewardBoxType.white) ...[
            Container(
              height: 16.h,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 195, 236, 248),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Align(
                alignment: AlignmentGeometry.centerLeft,
                child: FractionallySizedBox(
                  alignment: AlignmentGeometry.centerLeft,
                  widthFactor: 0.8,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 84, 170, 240),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),

            Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: MaterialButton(
                minWidth: width - 30.w,
                height: 33.h,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  side: const BorderSide(color: Colors.blue),
                ),
                onPressed: onTap,
                child: Text(
                  'Collect now',
                  style: TextStyle(color: Colors.blue, fontSize: 13.sp),
                ),
              ),
            ),
          ] else ...[
            SizedBox(height: 15.h),
            InkWell(
              onTap: onTap,
              child: Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: Container(
                  height: 33.h,
                  width: 130.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Image.asset(
                    'assets/images/collect.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class RewardsLaregSection extends StatelessWidget {
  const RewardsLaregSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 226, 228, 230),
              borderRadius: BorderRadius.circular(15.r),
            ),
            padding: EdgeInsets.all(18.r),
            child: Column(
              children: [
                PointsEarnCard(),
                SizedBox(height: 10.h),
                Container(
                  height: 360.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  padding: EdgeInsets.all(15.r),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          pointBox(
                            height: 60.h,
                            width: 60.w,
                            fontSize: 17.sp,
                            iconSize: 18.sp,
                            imageSize: 22.sp,
                          ),
                          SizedBox(width: 12.w),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '150 reward bonus',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                ),
                              ),
                              Text(
                                'claim upto 150 reward points after\nreaching the next transaction goal',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 20.h,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 195, 236, 248),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Align(
                                alignment: AlignmentGeometry.centerLeft,
                                child: FractionallySizedBox(
                                  alignment: AlignmentGeometry.centerLeft,
                                  widthFactor: 0.8,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        84,
                                        170,
                                        240,
                                      ),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            'QAR 240 AWAY',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Positioned(
              bottom: 80,
              right: 30,
              child: SizedBox(
                height: 170.h,
                width: MediaQuery.of(context).size.width,

                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.55),
                  itemCount: rewardBoxes.length,
                  itemBuilder: (context, index) {
                    final reward = rewardBoxes[index];
                    return Padding(
                      padding: EdgeInsets.only(right: 12.r),
                      child: RewardBox(
                        type: reward.type,
                        title: reward.title,
                        onTap: () {},
                        width: 150.w,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
