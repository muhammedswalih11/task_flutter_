import 'package:flutter_tasks_/features/refer/domain/domainservice.dart';

class ReferRepository {
  final service = ReferService();

  String fetchReferralCode() => service.getReferralCode();
}
