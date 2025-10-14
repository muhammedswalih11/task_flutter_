import 'package:dio/dio.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/refer_page.dart';
import 'package:flutter_tasks_/core/utils/dio_client.dart';
import 'package:flutter_tasks_/features/refer/data/models/contactmodel.dart';

// class ReferService {
//   final s = DefaultStrings.instance;

//   String getReferralCode() => s.referCode;

// Future<List<Contact>> fetchContacts() async {
//   await Future.delayed(Duration(seconds: 2));

//   final DummyContacts = [
//     {'name': s.contact1, 'phone': s.contactNum},
//     {'name': s.contact2, 'phone': s.contactNum},
//     {'name': s.contact3, 'phone': s.contactNum},
//     {'name': s.contact4, 'phone': s.contactNum},
//     {'name': s.contact1, 'phone': s.contactNum},
//     {'name': s.contact2, 'phone': s.contactNum},
//     {'name': s.contact3, 'phone': s.contactNum},
//     {'name': s.contact4, 'phone': s.contactNum},
//   ];

//   Future<List<Contact>> fetchContacts() async {
//   await Future.delayed(Duration(seconds: 2)); // Simulate network delay
//   return _fakeContactsJson.map((json) => Contact.fromJson(json)).toList();
// }
//     return DummyContacts.map((json) => Contact.fromJson(json)).toList();
//   }
// }
class ReferService {
  final Dio _dio = DioClient.instance;
  final s = DefaultStrings.instance;
  String getReferralCode() => s.referCode;

  bool useFakeData = true; // switch this to false when API ready

  Future<List<Contact>> fetchContacts() async {
    if (useFakeData) {
      // Return local dummy data
      return fetchFakeContacts();
    } else {
      // Return real API data
      return fetchContactsFromApi();
    }
  }

  Future<List<Contact>> fetchFakeContacts() async {
    await Future.delayed(const Duration(seconds: 1));

    final fakeJson = [
      {'name': s.contact1, 'phone': s.contactNum},
      {'name': s.contact2, 'phone': s.contactNum},
      {'name': s.contact3, 'phone': s.contactNum},
      {'name': s.contact4, 'phone': s.contactNum},
      {'name': s.contact1, 'phone': s.contactNum},
      {'name': s.contact2, 'phone': s.contactNum},
      {'name': s.contact3, 'phone': s.contactNum},
      {'name': s.contact4, 'phone': s.contactNum},
    ];

    return fakeJson.map((json) => Contact.fromJson(json)).toList();
  }

  Future<List<Contact>> fetchContactsFromApi() async {
    try {
      final response = await _dio.get('/contacts');
      if (response.statusCode == 200) {
        final List data = response.data;
        return data.map((json) => Contact.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load contacts');
      }
    } on DioException catch (e) {
      throw Exception('Network error: ${e.message}');
    }
  }
}
