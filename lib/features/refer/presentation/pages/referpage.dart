import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/refer/data/models/contactmodel.dart';
import 'package:flutter_tasks_/features/refer/presentation/controllers/providers.dart';
import 'package:flutter_tasks_/features/refer/presentation/widgets/invitewidget.dart';
import 'package:flutter_tasks_/features/refer/presentation/widgets/refer_headers.dart';
import 'package:flutter_tasks_/features/refer/presentation/widgets/referalcode_box.dart';
import 'package:flutter_tasks_/features/refer/presentation/widgets/referrallist.dart';
import 'package:flutter_tasks_/features/refer/presentation/widgets/toggleswitch.dart';

class Referpage extends ConsumerWidget {
  Referpage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final code = ref.watch(referralCodeprovider);
    // final contacts = ref.watch(contactsProvider);
    // final selected = ref.watch(selectedButtonProvider);
    final contactsAsync = ref.watch(contactsProvider);
    SizeConfig.init(context);

    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 227, 232, 243),
      backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(SizeConfig.screenWidth * 0.03),
              child: ReferHeaders1(),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: SizeConfig.screenWidth * 0.03,
              ),
              child: ReferalcodeBox(),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: SizeConfig.screenWidth * 0.03,
              ),
              child: InviteRow(),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Expanded(
              child: Container(
                // height: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryFixedDim,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(SizeConfig.screenWidth * 0.075),
                    topRight: Radius.circular(SizeConfig.screenWidth * 0.075),
                  ),
                ),
                padding: EdgeInsets.all(SizeConfig.screenWidth * 0.04),
                child: Column(
                  children: [
                    Toggleswitch(),
                    SizedBox(height: SizeConfig.screenHeight * 0.015),
                    Expanded(
                      child: contactsAsync.when(
                        loading: () => Center(
                          child: ListView.separated(
                            itemCount: 6,
                            itemBuilder: (context, index) => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                ),
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            separatorBuilder: (context, index) =>
                                const Divider(thickness: 1, color: Colors.grey),
                          ),
                        ),
                        error: (error, _) =>
                            Center(child: Text('Error: $error')),
                        data: (Contacts) => ListView.separated(
                          itemCount: Contacts.length,
                          itemBuilder: (context, i) =>
                              Referrallist(contact: Contacts[i], id: i),
                          separatorBuilder: (context, index) =>
                              const Divider(thickness: 1, color: Colors.grey),
                        ),
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
