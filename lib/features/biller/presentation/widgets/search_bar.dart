import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/biller/presentation/controllers/providers.dart';

class BillSearchBar extends ConsumerWidget {
  const BillSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = DefaultStrings.instance;
    return TextField(
      onChanged: (query) =>
          ref.read(CurrentSearchProvider.notifier).state = query,
      decoration: InputDecoration(
        hintText: s.searchBarText,
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
