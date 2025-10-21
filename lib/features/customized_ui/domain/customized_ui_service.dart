import 'package:dio/dio.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/customized_ui.dart';
import 'package:flutter_tasks_/core/utils/dio_client.dart';
import 'package:flutter_tasks_/features/customized_ui/datas/models.dart';

class CustomizedUiService {
  final Dio _dio = DioClient.instance;
  Future<List<BillCardModel>> fetchActiveBillers() async {
    await Future.delayed(Duration(seconds: 1));

    final dummyJson = [
      {
        "imageUrl": "assets/images/netflix.png",
        "title": "Netflix",
        "amount": s.activeNetflixAmount,
        "trialIcon": "arrow_upward",
      },
      {
        "imageUrl": "assets/images/prime.png",
        "title": "Amazon Prime",
        "amount": s.activePrimeBill,
        "trialIcon": "arrow_upward",
      },
      {
        "imageUrl": "assets/images/github.png",
        "title": "GitHub",
        "amount": s.activeGitBill,
        "trialIcon": "arrow_upward",
      },
      {
        "imageUrl": "assets/images/vodafone.png",
        "title": "Vodafone",
        "amount": s.activeVodafoneBill,
        "trialIcon": "arrow_upward",
      },
    ];
    return dummyJson.map((e) => BillCardModel.fromJson(e)).toList();
  }

  Future<List<SpendItem>> fetchCardSpends() async {
    await Future.delayed(const Duration(seconds: 1));
    final dummyJson = [
      {
        "name": "Ooredoo",
        "category": "Mobile",
        "amount": s.ooreedoSpendAmount,
        "imagePath": "assets/images/ooredoo.png",
      },
      {
        "name": "Amazon Prime",
        "category": "Streaming",
        "amount": s.primeSpendAmount,
        "imagePath": "assets/images/prime.png",
      },
      {
        "name": "MakeMyTrip",
        "category": "Travel",
        "amount": s.tripSpendAmount,
        "imagePath": "assets/images/makemytrip.png",
      },
    ];
    return dummyJson.map((e) => SpendItem.fromJson(e)).toList();
  }

  Future<List<RewardBoxModel>> fetchRewards() async {
    await Future.delayed(const Duration(seconds: 1));
    final dummyJson = [
      {
        "type": "gradient",
        "title": s.rewardBoxtext1,
        "progressPercentage": 0.0,
      },
      {"type": "white", "title": s.rewardBoxtext2, "progressPercentage": 0.7},
      {"type": "white", "title": s.rewardBoxtext3, "progressPercentage": 0.7},
    ];
    return dummyJson.map((e) => RewardBoxModel.fromJson(e)).toList();
  }

  Future<List<CcBillModel>> fetchCcBills() async {
    await Future.delayed(Duration(seconds: 1));

    final simulatedJson = [
      {
        "month": s.ccstatementMonth,
        "dueAmount": s.ccDueAmount,
        "dueDate": s.ccDueDate,
      },
    ];

    return simulatedJson.map((e) => CcBillModel.fromJson(e)).toList();
  }
}
