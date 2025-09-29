import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tasks_/features/refer/data/models/contactmodel.dart';
import 'package:flutter_tasks_/features/refer/presentation/controllers/providers.dart';

class Referrallist extends ConsumerWidget {
  final Contact contact;
  final int id;

  const Referrallist({required this.contact, required this.id, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedList = ref.watch(selectedReferralProvider);
    final isSelected = selectedList.contains(id);
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 6.r, horizontal: 4.r),
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black),
        ),
        child: CircleAvatar(
          radius: 22.r,
          backgroundColor: Colors.white,
          child: Text(
            contact.initial,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      title: Text(contact.name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Row(
        children: [
          Text(contact.phone, style: TextStyle(fontSize: 12.sp)),
          SizedBox(width: 7.w),
          Text('Invite and win 20 QAR', style: TextStyle(fontSize: 12.sp)),
        ],
      ),
      trailing: GestureDetector(
        onTap: () {
          final notifier = ref.read(selectedReferralProvider.notifier);
          if (isSelected) {
            notifier.state = [...selectedList]..remove(id);
          } else {
            notifier.state = [...selectedList, id];
          }
        },
        child: Container(
          width: 28.w,
          height: 28.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
            color: isSelected ? Colors.blue : Colors.transparent,
          ),
          child: isSelected
              ? Icon(Icons.check, size: 16.sp, color: Colors.white)
              : null,
        ),
      ),
    );
  }
}
