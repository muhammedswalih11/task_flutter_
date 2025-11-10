import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_tasks_/features/refer/presentation/controllers/providers.dart';

class Referrallist extends ConsumerWidget {
  final Map<String, String> contact;
  final int id;

  const Referrallist({required this.contact, required this.id, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedList = ref.watch(selectedReferralProvider);
    final isSelected = selectedList.contains(id);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final contactName = contact['name'] ?? '';
    final contactPhone = contact['phone'] ?? '';
    final initial = contactName.isNotEmpty ? contactName[0].toUpperCase() : '?';

    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        vertical: screenHeight * 0.007,
        horizontal: screenWidth * 0.01,
      ),
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white),
        ),
        child: CircleAvatar(
          radius: screenWidth * 0.06,
          backgroundColor: Colors.grey.shade200,
          child: Text(
            initial,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: screenWidth * 0.04,
            ),
          ),
        ),
      ),
      title: Text(
        contactName,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: screenWidth * 0.035,
          color: Colors.black,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            contactPhone,
            style: TextStyle(fontSize: screenWidth * 0.03, color: Colors.black),
          ),
          SizedBox(width: screenWidth * 0.018),
          Text(
            'Invite and win 20 QAR',
            style: TextStyle(fontSize: screenWidth * 0.03, color: Colors.black),
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
          width: screenWidth * 0.075,
          height: screenHeight * 0.035,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white),
            color: isSelected ? Colors.blue : Colors.transparent,
          ),
          child: isSelected
              ? Icon(Icons.check, size: screenWidth * 0.04, color: Colors.white)
              : null,
        ),
      ),
    );
  }
}
