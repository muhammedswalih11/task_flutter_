import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/features/biller/domain/bill_service.dart';

final filterprovider = StateProvider<String>((ref) => "All Bills");
final billServiceProvider = Provider<BillService>((ref) => BillService());
final rechargeServiceProvider = Provider<RechargeService>((ref) {
  return RechargeService();
});

final billListProvider = Provider<List<Map<String, dynamic>>>((ref) {
  final service = ref.read(billServiceProvider);
  return service.getBills();
});
// to hold current search
final CurrentSearchProvider = StateProvider<String>((ref) => '');

//filtered active bill
final filteredActiveBillProvider = Provider<List<Map<String, dynamic>>>((ref) {
  final allBills = ref.watch(billListProvider);
  final searchquery = ref.watch(CurrentSearchProvider).toLowerCase();
  return allBills
      .where(
        (bill) =>
            bill['status'] == 'active' &&
            (bill['name'] as String).toLowerCase().contains(searchquery),
      )
      .toList();
});

//filtered paid bills

final filteredPaidBillsProvider = Provider<List<Map<String, dynamic>>>((ref) {
  final allBills = ref.watch(billListProvider);
  final searchQuery = ref.watch(CurrentSearchProvider).toLowerCase();
  return allBills
      .where(
        (bill) =>
            bill['status'] == 'paid' &&
            (bill['name'] as String).toLowerCase().contains(searchQuery),
      )
      .toList();
});

final toggleProvider = StateProvider<int>((ref) => 0);

final rechargeCardProvider = Provider<List<Map<String, String>>>((ref) {
  final service = ref.read(rechargeServiceProvider);
  return service.getRechargeCards();
});
