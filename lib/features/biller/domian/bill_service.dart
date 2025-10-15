import 'package:dio/dio.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/customized_ui.dart';
import 'package:flutter_tasks_/core/utils/dio_client.dart';
import 'package:flutter_tasks_/features/biller/data/models.dart';

class BillService {
  final Dio _dio = DioClient.instance;
  final s = DefaultStrings.instance;

  bool useDummyData = true;

  Future<List<Bill>> fetchDummyBills() async {
    if (useDummyData) {
      return fetchDummyBillsFromJson();
    } else {
      return fetchBillsFromApi();
    }
  }

  Future<List<Bill>> fetchDummyBillsFromJson() async {
    await Future.delayed(Duration(seconds: 1));

    final dummyJson = [
      {
        'imageAsset': 'assets/images/netflix.png',
        'name': s.billBrandName1,
        'dueDate': s.netflixDueDateText,
        'amount': 23.00,
        'status': 'active',
        'rawDueDate': '2025-10-12T00:00:00.000Z',
      },
      {
        'imageAsset': 'assets/images/prime.png',
        'name': s.billBrandName2,
        'dueDate': s.primeDueDateText,
        'amount': 85.02,
        // 'status': BillStatus.active,
        'status': 'active',
        // 'rawDueDate': DateTime(2025, 10, 16),
        'rawDueDate': '2025-10-12T00:00:00.000Z',
      },
      {
        'imageAsset': 'assets/images/github.png',
        'name': s.billBrandName3,
        'dueDate': s.gitDueDateText,
        'amount': 73.00,
        'status': 'active',

        'rawDueDate': '2025-10-12T00:00:00.000Z',
      },
      {
        'imageAsset': 'assets/images/vodafone.png',
        'name': s.billBrandName4,
        'dueDate': s.vodafoneDueDateText,
        'amount': 45.00,
        'status': 'active',
        'rawDueDate': '2025-10-12T00:00:00.000Z',
      },
      {
        'imageAsset': 'assets/images/netflix.png',
        'name': s.billBrandName1,
        'dueDate': s.paidDate,
        'amount': 23.00,
        'status': 'paid',
        'rawDueDate': '2025-10-12T00:00:00.000Z',
      },
      {
        'imageAsset': 'assets/images/prime.png',
        'name': s.billBrandName2,
        'dueDate': s.paidDate,
        'amount': 85.02,
        'status': 'paid',
        'rawDueDate': '2025-10-12T00:00:00.000Z',
      },
      {
        'imageAsset': 'assets/images/github.png',
        'name': s.billBrandName3,
        'dueDate': s.paidDate,
        'amount': 73.00,
        'status': 'paid',
        'rawDueDate': '2025-10-12T00:00:00.000Z',
      },
      {
        'imageAsset': 'assets/images/vodafone.png',
        'name': s.billBrandName4,
        'dueDate': s.paidDate,
        'amount': 45.00,
        'status': 'paid',
        'rawDueDate': '2025-10-12T00:00:00.000Z',
      },
    ];

    return dummyJson.map((json) => Bill.fromJson(json)).toList();
  }

  Future<List<Bill>> fetchBillsFromApi() async {
    try {
      final response = await _dio.get('/bills');
      if (response.statusCode == 200) {
        final List data = response.data;
        return data.map((json) => Bill.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load bills');
      }
    } on DioException catch (e) {
      throw Exception('Network error: ${e.message}');
    }
  }
}

class RechargeService {
  final s = DefaultStrings.instance;

  Future<List<RechargeCardModel>> fetchDummyRechargeCards() async {
    await Future.delayed(Duration(seconds: 1));

    final dummyJson = [
      {
        'imagePath': 'assets/images/vodafone.png',
        'title': s.billBrandName4,
        'type': s.rechargeTypeText,
        'amount': '23.00 QAR',
      },
      {
        'imagePath': 'assets/images/ooredoo.png',
        'title': s.billOoreedo,
        'type': s.rechargeTypeText2,
        'amount': '85.00 QAR',
      },
    ];

    return dummyJson.map((json) => RechargeCardModel.fromJson(json)).toList();
  }
}
