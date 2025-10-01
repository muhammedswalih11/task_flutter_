import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/customized_ui/datas/models.dart';

class CardSections extends ConsumerWidget {
  final String title;
  final Widget dropdownChild;
  final StateProvider<bool> stateProvider;
  final bool showTriallingIcon;
  final bool isblueIcon;

  const CardSections({
    super.key,
    required this.title,
    required this.dropdownChild,
    required this.stateProvider,
    this.showTriallingIcon = true,
    this.isblueIcon = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isExpanded = ref.watch(stateProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: SizeConfig.screenHeight * 0.07,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      SizeConfig.screenWidth * 0.04,
                    ),
                    side: BorderSide(
                      color: const Color.fromARGB(137, 61, 59, 59),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(SizeConfig.screenWidth * 0.03),
                    child: Row(
                      children: [
                        Transform.rotate(
                          angle: 0.5,
                          child: Icon(
                            Icons.push_pin,
                            color: isblueIcon ? Colors.blue : Colors.white,
                            size: SizeConfig.screenWidth * 0.05,
                            shadows: [
                              Shadow(
                                offset: Offset(0, 0),
                                blurRadius: 3,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: SizeConfig.screenWidth * 0.02),
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.042,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            ref.read(stateProvider.notifier).state =
                                !isExpanded;
                          },
                          icon: Icon(
                            isExpanded
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            size: SizeConfig.screenWidth * 0.05,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (showTriallingIcon)
              Image.asset(
                'assets/images/drag.png',
                width: SizeConfig.screenWidth * 0.06,
                height: SizeConfig.screenHeight * 0.06,
              ),
          ],
        ),
        if (isExpanded) dropdownChild,
      ],
    );
  }
}
