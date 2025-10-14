import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/i18n_keys.dart';

extension billerPageString on DefaultStrings {
  String get billerTitle => get(I18nKeys().billerTitle, fallback: 'Billers');
  String get headerA => get(I18nKeys().headerA, fallback: 'You Have');
  String get headerB => get(I18nKeys().headerB, fallback: '4 Bills due');
  String get subHeader => get(
    I18nKeys().subHeader,
    fallback: 'Pay and Manage Billers and Recharges',
  );
  String get searchBarText => get(
    I18nKeys().searchBarText,
    fallback: 'Search Billers, Recharges and More',
  );
  String get toggle1Text =>
      get(I18nKeys().toggle1Text, fallback: 'All Bills (7)');
  String get toggle2Text =>
      get(I18nKeys().toggle2Text, fallback: 'Bills and Recharges (2)');
  String get activeBillTitle =>
      get(I18nKeys().activeBillTitle, fallback: 'Your Active Bills');
  String get addBillText =>
      get(I18nKeys().addBillText, fallback: 'Add New Biller');
  String get billBrandName1 =>
      get(I18nKeys().billBrandName1, fallback: 'Netflix');
  String get billBrandName2 =>
      get(I18nKeys().billBrandName2, fallback: 'Prime video');
  String get billBrandName3 =>
      get(I18nKeys().billBrandName3, fallback: 'Git Hub');
  String get billBrandName4 =>
      get(I18nKeys().billBrandName4, fallback: 'Vodafone');
  String get netflixDueAmount =>
      get(I18nKeys().netflixDueAmount, fallback: '23.00 QAR');
  String get primeDueAmount =>
      get(I18nKeys().primeDueAmount, fallback: '85.02 QAR');
  String get gitDueAmount =>
      get(I18nKeys().gitDueAmount, fallback: '73.00 QAR');
  String get vodafoneDueAmount =>
      get(I18nKeys().vodafoneDueAmount, fallback: '45.00 QAR');
  String get billcardPayText =>
      get(I18nKeys().billcardPayText, fallback: 'Pay');
  String get netflixDueDateText =>
      get(I18nKeys().netflixDueDateText, fallback: 'Due this 12th October');
  String get primeDueDateText =>
      get(I18nKeys().primeDueDateText, fallback: 'Due this 16th October');
  String get gitDueDateText =>
      get(I18nKeys().gitDueDateText, fallback: 'Due this 16th October');
  String get paidDate =>
      get(I18nKeys().paidDate, fallback: 'paid this 16th October');

  String get vodafoneDueDateText =>
      get(I18nKeys().vodafoneDueDateText, fallback: 'Due this 16th October');
  String get paidBillTitle =>
      get(I18nKeys().paidBillTitle, fallback: 'Your Paid Bills');
  String get rechargeSectionTitle =>
      get(I18nKeys().rechargeSectionTitle, fallback: 'Top Up and Balances');
  String get addRechargeText =>
      get(I18nKeys().addRechargeText, fallback: 'Add Recharge');
  String get rechargeTypeText =>
      get(I18nKeys().rechargeTypeText, fallback: 'Mobile recharge');
  String get vodafoneRechargeAmount =>
      get(I18nKeys().vodafoneRechargeAmount, fallback: '23.00 QAR');

  String get rechargeButtonText =>
      get(I18nKeys().rechargeButtonText, fallback: 'Recharge');
  String get btMobileText => get(I18nKeys().btMobileText, fallback: 'Mobile');
  String get btDthtext => get(I18nKeys().btDthtext, fallback: 'DTH');
  String get btBroadbandtext =>
      get(I18nKeys().btBroadbandtext, fallback: 'Broadband');
  String get btLandlineText =>
      get(I18nKeys().btLandlineText, fallback: 'Landline');
  String get copyText => get(I18nKeys().copyText, fallback: 'Text Copied');
  String get currencyQAR => get(I18nKeys().currencyQAR, fallback: 'QAR');
}
