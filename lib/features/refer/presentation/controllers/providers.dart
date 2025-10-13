import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/refer_page.dart';
import 'package:flutter_tasks_/features/refer/data/models/contactmodel.dart';
import 'package:flutter_tasks_/features/refer/data/repositary.dart';

final s = DefaultStrings.instance;

final repositoryProvider = Provider<ReferRepository>((ref) {
  return ReferRepository();
});

final referralCodeprovider = Provider<String>((ref) {
  return ref.read(repositoryProvider).fetchReferralCode();
});

final contactsProvider = Provider<List<Contact>>((ref) {
  return ref.read(repositoryProvider).fetchContacts();
});

final selectedButtonProvider = StateProvider<String>((ref) => s.referToggleA);
final selectedReferralProvider = StateProvider<List<int>>((ref) => []);
