import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/refer_page.dart';
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
    final s = DefaultStrings.instance;
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        vertical: SizeConfig.screenHeight * 0.007,
        horizontal: SizeConfig.screenWidth * 0.01,
      ),
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Theme.of(context).colorScheme.onPrimary),
        ),
        child: CircleAvatar(
          radius: SizeConfig.screenWidth * 0.06,
          backgroundColor: Theme.of(context).colorScheme.primaryFixedDim,
          child: Text(
            contact.initial,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
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
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            contact.phone,
            style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.03,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          SizedBox(width: SizeConfig.screenWidth * 0.018),
          Text(
            s.inviteNwinText,
            style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.03,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
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
            border: Border.all(color: Theme.of(context).colorScheme.onPrimary),
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
