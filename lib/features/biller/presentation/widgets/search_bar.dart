import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/features/biller/presentation/controllers/providers.dart';

import '../../../../core/utils/colors.dart';

class BillSearchBar extends ConsumerWidget {
  const BillSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    return TextField(
      onChanged: (query) =>
          ref.read(CurrentSearchProvider.notifier).state = query,
      decoration: InputDecoration(
        hintText: 'Search Billers, Recharges and More...',
        hintStyle: TextStyle(color: DefaultColors.grayBase),
        prefixIcon: Icon(Icons.search, color: DefaultColors.black),
        filled: true,
        fillColor: DefaultColors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(screenWidth * 0.075),
          borderSide: BorderSide(color: DefaultColors.grayB0),
        ),
      ),
    );
  }
}
