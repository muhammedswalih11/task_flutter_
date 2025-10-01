import 'package:flutter/material.dart';
import 'package:flutter_tasks_/core/utils/size_configuration.dart';

class CcBillSection extends StatelessWidget {
  const CcBillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 226, 228, 230),
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.03),
      ),
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.screenWidth * 0.032),
        child: Container(
          padding: EdgeInsets.all(SizeConfig.screenWidth * 0.025),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.03),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'September\nStatement',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.screenWidth * 0.030,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'QAR 2,636.41',
                    style: TextStyle(fontSize: SizeConfig.screenWidth * 0.042),
                  ),
                  Text(
                    'Due on the 12th October',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: SizeConfig.screenWidth * 0.033,
                    ),
                  ),
                ],
              ),
              MaterialButton(
                height: SizeConfig.screenHeight * 0.030,
                minWidth: SizeConfig.screenWidth * 0.15,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(
                    SizeConfig.screenWidth * 0.045,
                  ),
                ),

                onPressed: () {},
                child: Text(
                  'Pay',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: SizeConfig.screenWidth * 0.036,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
