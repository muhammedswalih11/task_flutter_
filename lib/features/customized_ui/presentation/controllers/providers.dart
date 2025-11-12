import 'package:flutter_riverpod/flutter_riverpod.dart';

// final sectionExpandedProvider = StateProvider<bool>((ref) => false);
final dropdown1Provider = StateProvider<bool>((ref) => false);
final dropdown2Provider = StateProvider<bool>((ref) => false);
final dropdown3Provider = StateProvider<bool>((ref) => false);
final dropdown4Provider = StateProvider<bool>((ref) => false);
final dropdown5Provider = StateProvider<bool>((ref) => false);

// this for account cards

final selectedAccountProvider = StateProvider<String>((ref) {
  return 'Platinum Mastercard xxxx2842';
});

final accountsProvider = Provider<List<String>>((ref) {
  return [
    'Platinum Mastercard xxxx2842',
    'Visa Gold xxxx5123',
    'Debit Card xxxx1039',
  ];
});
