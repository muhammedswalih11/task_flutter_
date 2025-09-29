import 'package:flutter_tasks_/features/refer/data/models/contactmodel.dart';
import 'package:flutter_tasks_/features/refer/domain/domainservice.dart';

class ReferRepository {
  final service = ReferService();

  String fetchReferralCode() => service.getReferralCode();
  List<Contact> fetchContacts() => service.getContacts();
}
