import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Invitewidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final String sublabel;
  final Color color;
  const Invitewidget({
    required this.icon,
    required this.label,
    required this.sublabel,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      child: Column(
        children: [
          Container(
            width: 45.w,
            height: 45.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Padding(
              padding:  EdgeInsets.all(5.r),
              child: Icon(icon, size: 34.sp),
            ),
          ),
          SizedBox(height: 6.h),
          SizedBox(
            width: 80.w,
            child: Column(
              children: [
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12.sp),

                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  sublabel,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
