import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/features/biller/presentation/controllers/providers.dart';
import 'package:flutter_tasks_/features/biller/presentation/widgets/toggles_bottom_section.dart';

class Toggles extends ConsumerWidget {
  const Toggles({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedToggle = ref.watch(toggleProvider);
    return Row(
      children: [
        ToggleWidget(
          label: 'All Bills (7)',
          selected: selectedToggle == 0,
          onTap: () => ref.read(toggleProvider.notifier).state = 0,
        ),
        SizedBox(width: 12),
        ToggleWidget(
          label: 'Bills and Recharges (2)',
          selected: selectedToggle == 1,
          onTap: () => ref.read(toggleProvider.notifier).state = 1,
        ),
      ],
    );
  }
}
