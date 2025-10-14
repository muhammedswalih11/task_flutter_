import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/features/biller/data/models.dart';
import 'package:flutter_tasks_/features/biller/domian/bill_service.dart';

final filterprovider = StateProvider<String>((ref) => "All Bills");
final billServiceProvider = Provider<BillService>((ref) => BillService());
final rechargeServiceProvider = Provider<RechargeService>((ref) {
  return RechargeService();
});

final billListProvider = FutureProvider<List<Bill>>((ref) async {
  final service = ref.read(billServiceProvider);
  return await service.fetchDummyBills();
});
// to hold current search
final CurrentSearchProvider = StateProvider<String>((ref) => '');

//filtered active bill
final filteredActiveBillProvider = FutureProvider<List<Bill>>((ref) async {
  final allBills = await ref.watch(billListProvider.future);
  final searchquery = ref.watch(CurrentSearchProvider).toLowerCase();
  return allBills
      .where(
        (bill) =>
            bill.status == BillStatus.active &&
            bill.name.toLowerCase().contains(searchquery),
      )
      .toList();
});

//filtered paid bills

final filteredPaidBillsProvider = FutureProvider<List<Bill>>((ref) async {
  final allBills = await ref.watch(billListProvider.future);
  final searchQuery = ref.watch(CurrentSearchProvider).toLowerCase();
  return allBills
      .where(
        (bill) =>
            bill.status == BillStatus.paid &&
            bill.name.toLowerCase().contains(searchQuery),
      )
      .toList();
});

final toggleProvider = StateProvider<int>((ref) => 0);

final rechargeCardProvider = FutureProvider<List<RechargeCardModel>>((
  ref,
) async {
  final service = ref.read(rechargeServiceProvider);
  return await service.fetchDummyRechargeCards();
});
