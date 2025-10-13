import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/refer_page.dart';
import 'package:flutter_tasks_/features/refer/data/models/contactmodel.dart';

final s = DefaultStrings.instance;

class ReferService {
  String getReferralCode() => s.referCode;

  List<Contact> getContacts() => [
    Contact(name: s.contact1, phone: s.contactNum),
    Contact(name: s.contact2, phone: s.contactNum),
    Contact(name: s.contact3, phone: s.contactNum),
    Contact(name: s.contact4, phone: s.contactNum),
    Contact(name: s.contact1, phone: s.contactNum),
    Contact(name: s.contact2, phone: s.contactNum),
    Contact(name: s.contact3, phone: s.contactNum),
    Contact(name: s.contact4, phone: s.contactNum),
  ];
}
