class BillService {
  // All data is hardcoded locally; fully synchronous accessors.
  List<Map<String, dynamic>> getBills() {
    return [
      {
        'imageAsset': 'assets/images/netflix.png',
        'name': 'Netflix',
        'dueDate': 'Due this 12th October',
        'amount': 23.00,
        'status': 'active',
        'rawDueDate': DateTime(2025, 10, 12),
      },
      {
        'imageAsset': 'assets/images/prime.png',
        'name': 'Prime Video',
        'dueDate': 'Due this 16th October',
        'amount': 85.02,
        'status': 'active',
        'rawDueDate': DateTime(2025, 10, 16),
      },
      {
        'imageAsset': 'assets/images/github.png',
        'name': 'GitHub',
        'dueDate': 'Due this 16th October',
        'amount': 73.00,
        'status': 'active',
        'rawDueDate': DateTime(2025, 10, 16),
      },
      {
        'imageAsset': 'assets/images/vodafone.png',
        'name': 'Vodafone',
        'dueDate': 'Due this 16th October',
        'amount': 45.00,
        'status': 'active',
        'rawDueDate': DateTime(2025, 10, 16),
      },
      {
        'imageAsset': 'assets/images/netflix.png',
        'name': 'Netflix',
        'dueDate': 'paid this 16th October',
        'amount': 23.00,
        'status': 'paid',
        'rawDueDate': DateTime(2025, 10, 16),
      },
      {
        'imageAsset': 'assets/images/prime.png',
        'name': 'Prime Video',
        'dueDate': 'paid this 16th October',
        'amount': 85.02,
        'status': 'paid',
        'rawDueDate': DateTime(2025, 10, 16),
      },
      {
        'imageAsset': 'assets/images/github.png',
        'name': 'GitHub',
        'dueDate': 'paid this 16th October',
        'amount': 73.00,
        'status': 'paid',
        'rawDueDate': DateTime(2025, 10, 16),
      },
      {
        'imageAsset': 'assets/images/vodafone.png',
        'name': 'Vodafone',
        'dueDate': 'paid this 16th October',
        'amount': 45.00,
        'status': 'paid',
        'rawDueDate': DateTime(2025, 10, 16),
      },
    ];
  }
}

class RechargeService {
  List<Map<String, String>> getRechargeCards() {
    return [
      {
        'imagePath': 'assets/images/vodafone.png',
        'title': 'Vodafone',
        'type': 'Mobile recharge',
        'amount': '23.00 QAR',
      },
      {
        'imagePath': 'assets/images/ooredoo.png',
        'title': 'Ooreedo',
        'type': 'DTH recharge',
        'amount': '85.00 QAR',
      },
    ];
  }
}
