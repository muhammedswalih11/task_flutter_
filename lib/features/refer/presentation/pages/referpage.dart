import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/features/refer/presentation/widgets/invitewidget.dart';
import 'package:flutter_tasks_/features/refer/presentation/widgets/refer_headers.dart';
import 'package:flutter_tasks_/features/refer/presentation/widgets/referalcode_box.dart';
import 'package:flutter_tasks_/features/refer/presentation/widgets/referrallist.dart';
import 'package:flutter_tasks_/features/refer/presentation/widgets/toggleswitch.dart';

class Referpage extends ConsumerWidget {
  Referpage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contacts = [
      {'name': 'Alqabiadi', 'phone': '84018501939'},
      {'name': 'Ahmed', 'phone': '84018501939'},
      {'name': 'Hamza', 'phone': '84018501939'},
      {'name': 'Fatima', 'phone': '84018501939'},
      {'name': 'Noah', 'phone': '84018501939'},
      {'name': 'Olivia', 'phone': '84018501939'},
      {'name': 'Liam', 'phone': '84018501939'},
      {'name': 'Emma', 'phone': '84018501939'},
    ];
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 227, 232, 243),
      backgroundColor: Colors.blueGrey.shade50,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.03),
              child: ReferHeaders1(),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: screenWidth * 0.03,
              ),
              child: ReferalcodeBox(),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: screenWidth * 0.03,
              ),
              child: InviteRow(),
            ),
            SizedBox(height: screenHeight * 0.02),
            Expanded(
              child: Container(
                // height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(screenWidth * 0.075),
                    topRight: Radius.circular(screenWidth * 0.075),
                  ),
                ),
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Column(
                  children: [
                    Toggleswitch(),
                    SizedBox(height: screenHeight * 0.015),
                    Expanded(
                      child: ListView.separated(
                        itemCount: contacts.length,
                        itemBuilder: (context, i) =>
                            Referrallist(contact: contacts[i], id: i),
                        separatorBuilder: (context, index) =>
                            const Divider(thickness: 1, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
