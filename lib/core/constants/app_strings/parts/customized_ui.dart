import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/i18n_keys.dart';

extension CustomizedUiString on DefaultStrings {
  String get customizeduiTitle =>
      get(I18nKeys().customizeduiTitle, fallback: 'Customize Widgets');
  String get typeA => get(I18nKeys().typeA, fallback: 'Pinned');

  String get typeB => get(I18nKeys().typeB, fallback: 'Unpinned');

  String get cardType1 =>
      get(I18nKeys().cardType1, fallback: 'Your Active Billers');

  String get cardType2 => get(I18nKeys().cardType2, fallback: 'card Spends');

  String get cardType3 =>
      get(I18nKeys().cardType3, fallback: 'Credit Card Bills');

  String get cardType4 =>
      get(I18nKeys().cardType4, fallback: 'Rewards (Condensed)');

  String get cardType5 =>
      get(I18nKeys().cardType5, fallback: 'Rewards (Large)');

  String get billOoreedo => get(I18nKeys().billOoreedo, fallback: 'Ooreedo');

  String get billMakemyTrip =>
      get(I18nKeys().billMakemyTrip, fallback: 'Make My Trip');

  String get ooreedoCategory =>
      get(I18nKeys().ooreedoCategory, fallback: 'Phone Bill');

  String get primeCategory =>
      get(I18nKeys().primeCategory, fallback: 'Entertainment');

  String get makemyTripCategory =>
      get(I18nKeys().makemyTripCategory, fallback: 'Travel');

  String get ooreedoSpendAmount =>
      get(I18nKeys().ooreedoSpendAmount, fallback: 'QAR 2,636.41');
  String get primeSpendAmount =>
      get(I18nKeys().primeSpendAmount, fallback: 'QAR 636.41');
  String get tripSpendAmount =>
      get(I18nKeys().tripSpendAmount, fallback: 'QAR 234.46');
  String get cardSpendHeader =>
      get(I18nKeys().cardSpendHeader, fallback: 'Your recent Spends');
  String get cardSpenButtonText =>
      get(I18nKeys().cardSpenButtonText, fallback: 'View all Spends');
  String get ccstatementMonth =>
      get(I18nKeys().ccstatementMonth, fallback: 'September\nStatement');
  String get ccDueAmount =>
      get(I18nKeys().ccDueAmount, fallback: 'QAR 2,636.41');
  String get ccDueDate =>
      get(I18nKeys().ccDueDate, fallback: 'Due on 12th October');
  String get ccPayButtontext =>
      get(I18nKeys().ccPayButtontext, fallback: 'Pay');
  String get pointsEarnText =>
      get(I18nKeys().pointsEarnText, fallback: '1285 Reward Points earned');
  String get rcClaimText => get(
    I18nKeys().rcClaimText,
    fallback:
        'Claim upto 150 reward points\nafter reaching the next\ntransaction goal',
  );
  String get rcProgressText =>
      get(I18nKeys().rcProgressText, fallback: 'QAR 240 away');
  String get rlBonusText =>
      get(I18nKeys().rlBonusText, fallback: '150 reward bonus');
  String get rlClaimtext => get(
    I18nKeys().rlClaimtext,
    fallback:
        'Claim upto 150 reward points after\nreaching the next transaction goal',
  );
  String get rewardBoxtext1 =>
      get(I18nKeys().rewardBoxtext1, fallback: 'New Reward\nunlocked');
  String get rewardBoxtext2 => get(
    I18nKeys().rewardBoxtext2,
    fallback: '2 transactions away from\nunlocking the reward',
  );
  String get rewardBoxtext3 => get(
    I18nKeys().rewardBoxtext3,
    fallback: '2 more transactions away\nfrom unlocking this\nreward',
  );
  String get rewardCollectText =>
      get(I18nKeys().rewardCollectText, fallback: 'Collect');
  //bill amounts
  String get activeNetflixAmount =>
      get(I18nKeys().activeNetflixAmount, fallback: '23 QAR');
  String get activePrimeBill =>
      get(I18nKeys().activePrimeBill, fallback: '16.24 QAR');
  String get activeGitBill =>
      get(I18nKeys().activeGitBill, fallback: '12.43 QAR');
  String get activeVodafoneBill =>
      get(I18nKeys().activeVodafoneBill, fallback: '16.24 QAR');
  String get doneButtontext => get(I18nKeys().doneButtontext, fallback: 'Done');
}
