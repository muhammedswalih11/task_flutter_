import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/features/refer/data/repositary.dart';

final repositoryProvider = Provider<ReferRepository>((ref) {
  return ReferRepository();
});

final referralCodeprovider = Provider<String>((ref) {
  return ref.read(repositoryProvider).fetchReferralCode();
});

final selectedButtonProvider = StateProvider<String>((ref) => 'All');
final selectedReferralProvider = StateProvider<List<int>>((ref) => []);
