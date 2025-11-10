import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_tasks_/features/refer/presentation/controllers/providers.dart';

class ReferalcodeBox extends ConsumerWidget {
  const ReferalcodeBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final code = ref.watch(referralCodeprovider);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        // color: Colors.black,
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(screenWidth * 0.03),
      ),
      padding: EdgeInsets.all(screenWidth * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Referral Code',
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.035,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: TextEditingController(text: code),

                  readOnly: true,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,

                    fillColor: Colors.amber.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () async {
                        await Clipboard.setData(ClipboardData(text: code));
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Copied to clipboard')),
                        );
                      },
                      icon: Icon(Icons.copy, size: screenWidth * 0.06),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.015),
          MaterialButton(
            minWidth: double.infinity,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(screenWidth * 0.045),
            ),
            color: const Color.fromARGB(255, 8, 79, 138),
            onPressed: () {},
            child: Text(
              'Share and Earn',
              style: TextStyle(
                color: Colors.black,
                fontSize: screenWidth * 0.035,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
