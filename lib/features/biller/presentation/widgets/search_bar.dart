import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/biller/presentation/controllers/providers.dart';

class BillSearchBar extends ConsumerWidget {
  const BillSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      onChanged: (query) =>
          ref.read(CurrentSearchProvider.notifier).state = query,
      decoration: InputDecoration(
        hintText: 'Search Billers , Recharges and More..',
        prefixIcon: Icon(Icons.search),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.075),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
