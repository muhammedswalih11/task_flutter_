import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_tasks_/features/biller/data/models.dart';

final filterprovider = StateProvider<String>((ref) => "All Bills");

final billListProvider = Provider<List<Bill>>((ref) {
  return [
    Bill(
      imageAsset: 'assets/images/netflix.png',
      name: 'Netflix',
      amount: 23.00,
      status: BillStatus.active,
    ),
    Bill(
      imageAsset: 'assets/images/prime.png',
      name: 'Prime Video',
      amount: 85.02,
      status: BillStatus.active,
    ),

    Bill(
      imageAsset: 'assets/images/github.png',
      name: 'Github',
      amount: 73.00,
      status: BillStatus.active,
    ),
    Bill(
      imageAsset: 'assets/images/vodafone.png',
      name: 'Vodafone',
      amount: 45.00,
      status: BillStatus.active,
    ),

    Bill(
      imageAsset: 'assets/images/netflix.png',
      name: 'Netflix',
      amount: 23.00,
      status: BillStatus.paid,
    ),
    Bill(
      imageAsset: 'assets/images/prime.png',
      name: 'Prime Video',
      amount: 85.02,
      status: BillStatus.paid,
    ),

    Bill(
      imageAsset: 'assets/images/github.png',
      name: 'Github',
      amount: 73.00,
      status: BillStatus.paid,
    ),
    Bill(
      imageAsset: 'assets/images/vodafone.png',
      name: 'Vodafone',
      amount: 45.00,
      status: BillStatus.paid,
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
