import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/refer/presentation/controllers/providers.dart';

class Toggleswitch extends ConsumerWidget {
  const Toggleswitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedButtonProvider);

    return Row(
      children: [
        MaterialButton(
          minWidth: SizeConfig.screenWidth * 0.18,
          onPressed: () {
            ref.read(selectedButtonProvider.notifier).state = "All";
          },
          color: selected == "All"
              ? const Color.fromARGB(255, 21, 77, 122)
              : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.045),
            side: BorderSide(color: Color.fromARGB(255, 21, 77, 122)),
          ),
          child: Text(
            'All',
            style: TextStyle(
              color: selected == "All"
                  ? Colors.white
                  : const Color.fromARGB(255, 21, 77, 122),
              fontSize: SizeConfig.screenWidth * 0.035,
            ),
          ),
        ),
        SizedBox(width: SizeConfig.screenWidth * 0.025),
        MaterialButton(
          minWidth: SizeConfig.screenWidth * 0.35,
          onPressed: () {
            ref.read(selectedButtonProvider.notifier).state = "Recent";
          },
          color: selected == "Recent"
              ? const Color.fromARGB(255, 21, 77, 122)
              : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.045),
            side: BorderSide(color: const Color.fromARGB(255, 21, 77, 122)),
          ),
          child: Text(
            'Recently Transacted ',
            style: TextStyle(
              color: selected == "Recent"
                  ? Colors.white
                  : const Color.fromARGB(255, 21, 77, 122),
              fontSize: SizeConfig.screenWidth * 0.035,
            ),
          ),
        ),
      ],
    );
  }
}
