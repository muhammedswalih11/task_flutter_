import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/customized_ui.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';
import 'package:flutter_tasks_/features/customized_ui/datas/models.dart';
import 'package:flutter_tasks_/features/customized_ui/domain/customized_ui_service.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/widgets/spend_row.dart';

class CardSpendsBox extends StatelessWidget {
  CardSpendsBox({super.key});
  final s = DefaultStrings.instance;
  final service = CustomizedUiService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SpendItem>>(
      future: service.fetchCardSpends(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
            children: List.generate(
              3,
              (index) => Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight * 0.008,
                ),
                child: Shimmer.fromColors(
                  baseColor: Theme.of(context).colorScheme.surfaceBright,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: SizeConfig.screenHeight * 0.050,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        SizeConfig.screenWidth * 0.02,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('Error Loading Spends'));
        }

        final spendItems = snapshot.data!;
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...spendItems.map(
              (item) => SpendRow(
                name: item.name,
                category: item.category,
                amount: item.amount,
                imagePath: item.imagePath,
              ),
            ),
            MaterialButton(
              minWidth: double.infinity,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color.fromARGB(255, 8, 73, 126)),
                borderRadius: BorderRadius.circular(
                  SizeConfig.screenWidth * 0.05,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    s.cardSpenButtonText,
                    style: TextStyle(
                      color: Color.fromARGB(255, 8, 73, 126),
                      fontSize: SizeConfig.screenWidth * 0.038,
                    ),
                  ),
                  SizedBox(width: SizeConfig.screenWidth * 0.040),
                  Transform.rotate(
                    angle: 0.5,
                    child: Icon(
                      Icons.arrow_upward,
                      color: Color.fromARGB(255, 8, 73, 126),
                      size: SizeConfig.screenWidth * 0.05,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
