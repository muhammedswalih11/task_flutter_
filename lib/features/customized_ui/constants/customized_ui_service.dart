import 'package:flutter/material.dart';

class CustomizedUiService {
  List<Map<String, dynamic>> getActiveBillers() {
    return [
      {
        'imageUrl': 'assets/images/netflix.png',
        'title': 'Netflix',
        'amount': '23 QAR',
        'trialIcon': Icons.arrow_upward,
      },
      {
        'imageUrl': 'assets/images/prime.png',
        'title': 'Amazon Prime',
        'amount': '16.24 QAR',
        'trialIcon': Icons.arrow_upward,
      },
      {
        'imageUrl': 'assets/images/github.png',
        'title': 'GitHub',
        'amount': '12.43 QAR',
        'trialIcon': Icons.arrow_upward,
      },
      {
        'imageUrl': 'assets/images/vodafone.png',
        'title': 'Vodafone',
        'amount': '16.24 QAR',
        'trialIcon': Icons.arrow_upward,
      },
    ];
  }

  List<Map<String, dynamic>> getCardSpends() {
    return [
      {
        'name': 'Ooredoo',
        'category': 'Mobile',
        'amount': 'QAR 2,636.41',
        'imagePath': 'assets/images/ooredoo.png',
        'date': '12 Oct',
      },
      {
        'name': 'Amazon Prime',
        'category': 'Streaming',
        'amount': 'QAR 636.41',
        'imagePath': 'assets/images/prime.png',
        'date': '10 Oct',
      },
      {
        'name': 'MakeMyTrip',
        'category': 'Travel',
        'amount': 'QAR 234.46',
        'imagePath': 'assets/images/makemytrip.png',
        'date': '8 Oct',
      },
    ];
  }

  List<Map<String, dynamic>> getRewards() {
    return [
      {
        'type': 'gradient',
        'title': 'New Reward\nunlocked',
        'progressPercentage': 0.0,
      },
      {
        'type': 'white',
        'title': '2 transactions away from\nunlocking the reward',
        'progressPercentage': 0.7,
      },
      {
        'type': 'white',
        'title': '2 more transactions away\nfrom unlocking this\nreward',
        'progressPercentage': 0.7,
      },
    ];
  }

  List<Map<String, String>> getCcBills() {
    return [
      {
        'month': 'September\nStatement',
        'dueAmount': 'QAR 2,636.41',
        'dueDate': 'Due on 12th October',
      },
    ];
  }
}
