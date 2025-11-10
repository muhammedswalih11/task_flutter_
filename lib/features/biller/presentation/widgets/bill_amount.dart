import 'package:flutter/material.dart';

class BillAmount extends StatelessWidget {
  final double amount;

  const BillAmount({required this.amount});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      flex: 2,
      child: Text(
        '${amount.toStringAsFixed(2)} ${'QAR'}',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: screenWidth * 0.04,
        ),
      ),
    );
  }
}
