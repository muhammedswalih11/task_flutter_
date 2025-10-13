import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/core/constants/app_strings/default_string.dart';
import 'package:flutter_tasks_/core/constants/app_strings/parts/biller_page.dart';
import 'package:flutter_tasks_/features/biller/data/models.dart';

final filterprovider = StateProvider<String>((ref) => "All Bills");

final billListProvider = Provider<List<Bill>>((ref) {
  final s = DefaultStrings.instance;
  return [
    Bill(
      imageAsset: 'assets/images/netflix.png',
      name: s.billBrandName1,
      dueDate: s.netflixDueDateText,
      amount: 23.00,
      status: BillStatus.active,
      rawDueDate: DateTime(2025, 10, 12),
    ),
    Bill(
      imageAsset: 'assets/images/prime.png',
      name: s.billBrandName2,
      dueDate: s.primeDueDateText,
      amount: 85.02,
      status: BillStatus.active,
      rawDueDate: DateTime(2025, 10, 16),
    ),

    Bill(
      imageAsset: 'assets/images/github.png',
      name: s.billBrandName3,
      dueDate: s.gitDueDateText,
      amount: 73.00,
      status: BillStatus.active,
      rawDueDate: DateTime(2025, 10, 16),
    ),
    Bill(
      imageAsset: 'assets/images/vodafone.png',
      name: s.billBrandName4,
      dueDate: s.vodafoneDueDateText,
      amount: 45.00,
      status: BillStatus.active,
      rawDueDate: DateTime(2025, 10, 16),
    ),

    Bill(
      imageAsset: 'assets/images/netflix.png',
      name: s.billBrandName1,
      dueDate: s.paidDate,
      amount: 23.00,
      status: BillStatus.paid,
      rawDueDate: DateTime(2025, 10, 16),
    ),
    Bill(
      imageAsset: 'assets/images/prime.png',
      name: s.billBrandName2,
      dueDate: s.paidDate,
      amount: 85.02,
      status: BillStatus.paid,
      rawDueDate: DateTime(2025, 10, 16),
    ),

    Bill(
      imageAsset: 'assets/images/github.png',
      name: s.billBrandName3,
      dueDate: s.paidDate,
      amount: 73.00,
      status: BillStatus.paid,
      rawDueDate: DateTime(2025, 10, 16),
    ),
    Bill(
      imageAsset: 'assets/images/vodafone.png',
      name: s.billBrandName4,
      dueDate: s.paidDate,
      amount: 45.00,
      status: BillStatus.paid,
      rawDueDate: DateTime(2025, 10, 16),
    ),
  ];
});
// to hold current search
final CurrentSearchProvider = StateProvider<String>((ref) => '');

//filtered active bill
final filteredActiveBillProvider = Provider<List<Bill>>((ref) {
  final allBills = ref.watch(billListProvider);
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

final filteredPaidBillsProvider = Provider<List<Bill>>((ref) {
  final allBills = ref.watch(billListProvider);
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
