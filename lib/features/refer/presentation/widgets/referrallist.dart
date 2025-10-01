import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
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
      contentPadding: EdgeInsets.symmetric(
        vertical: SizeConfig.screenHeight * 0.007,
        horizontal: SizeConfig.screenWidth * 0.01,
      ),
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black),
        ),
        child: CircleAvatar(
          radius: SizeConfig.screenWidth * 0.06,
          backgroundColor: Colors.white,
          child: Text(
            contact.initial,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.screenWidth * 0.04,
            ),
          ),
        ),
      ),
      title: Text(
        contact.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: SizeConfig.screenWidth * 0.035,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            contact.phone,
            style: TextStyle(fontSize: SizeConfig.screenWidth * 0.03),
          ),
          SizedBox(width: SizeConfig.screenWidth * 0.018),
          Text(
            'Invite and win 20 QAR',
            style: TextStyle(fontSize: SizeConfig.screenWidth * 0.03),
          ),
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
          width: SizeConfig.screenWidth * 0.075,
          height: SizeConfig.screenHeight * 0.035,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
            color: isSelected ? Colors.blue : Colors.transparent,
          ),
          child: isSelected
              ? Icon(
                  Icons.check,
                  size: SizeConfig.screenWidth * 0.04,
                  color: Colors.white,
                )
              : null,
        ),
      ),
    );
  }
}
