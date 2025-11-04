import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/refer_page.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/refer/presentation/controllers/providers.dart';

class ReferalcodeBox extends ConsumerWidget {
  const ReferalcodeBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = DefaultStrings.instance;
    final code = ref.watch(referralCodeprovider);

    return Container(
      decoration: BoxDecoration(
        // color: Colors.white,
        color: Theme.of(context).colorScheme.primaryFixedDim,
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.03),
      ),
      padding: EdgeInsets.all(SizeConfig.screenWidth * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            s.referBoxHeader,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: SizeConfig.screenWidth * 0.035,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.01),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: TextEditingController(text: code),

                  readOnly: true,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  decoration: InputDecoration(
                    filled: true,

                    fillColor: Theme.of(context).colorScheme.tertiaryContainer,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        SizeConfig.screenWidth * 0.02,
                      ),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () async {
                        await Clipboard.setData(ClipboardData(text: code));
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(s.copyText)));
                      },
                      icon: Icon(
                        Icons.copy,
                        size: SizeConfig.screenWidth * 0.06,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.015),
          MaterialButton(
            minWidth: double.infinity,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                SizeConfig.screenWidth * 0.045,
              ),
            ),
            color: const Color.fromARGB(255, 8, 79, 138),
            onPressed: () {},
            child: Text(
              s.shareandEarnText,
              style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.screenWidth * 0.035,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
