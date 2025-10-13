import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/i18n_keys.dart';

extension BottomSheetString on DefaultStrings {
  String get title => get(I18nKeys().title, fallback: 'Manage Biller');
  String get acnameText => get(I18nKeys().title, fallback: 'Account Name');
  String get amountDueText => get(I18nKeys().title, fallback: 'Amount Due');
  String get dueDateText => get(I18nKeys().title, fallback: 'Next Due On');
  String get accountName => get(I18nKeys().title, fallback: 'Alqabiadi');
  String get deleteBillText => get(I18nKeys().title, fallback: 'Delete Biller');
  String get deleteBillSubtext => get(
    I18nKeys().title,
    fallback: 'You will stop tracking the biller if you delete it',
  );
}
