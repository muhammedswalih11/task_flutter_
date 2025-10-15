import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/i18n_keys.dart';

extension ReferPageStrings on DefaultStrings {
  String get referpageTitle =>
      get(I18nKeys().referpageTitle, fallback: 'Refer and Earn');
  String get referBoxHeader =>
      get(I18nKeys().referBoxHeader, fallback: 'Your Referral Code');
  String get referCode => get(I18nKeys().referCode, fallback: 'FRIEND 2024');
  String get shareandEarnText =>
      get(I18nKeys().shareandEarnText, fallback: 'Share and Earn');
  String get helpLink => get(I18nKeys().helpLink, fallback: 'How to\nrefer');
  String get whatsappLink =>
      get(I18nKeys().whatsappLink, fallback: 'Invite via\nWhatsapp');
  String get qrLink =>
      get(I18nKeys().qrLink, fallback: 'Invite via\nreferral QR');
  String get copyLink =>
      get(I18nKeys().referpageTitle, fallback: 'Referral\nCode');
  String get referToggleA => get(I18nKeys().referToggleA, fallback: 'All');
  String get referToggleB =>
      get(I18nKeys().referToggleB, fallback: 'Recently Transacted');
  String get contact1 => get(I18nKeys().contact1, fallback: 'Alqabiadi');
  String get contact2 => get(I18nKeys().contact2, fallback: 'Ahmed');
  String get contact3 => get(I18nKeys().contact3, fallback: 'Hamza');
  String get contact4 => get(I18nKeys().contact4, fallback: 'Fatima');
  String get inviteNwinText =>
      get(I18nKeys().inviteNwinText, fallback: 'Invite and win 20 QAR');
  String get contactNum => get(I18nKeys().contactNum, fallback: '84018501939');
}
