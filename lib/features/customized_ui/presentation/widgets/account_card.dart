// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_tasks_/features/customized_ui/presentation/controllers/providers.dart';

// class AccountCard extends ConsumerWidget {
//   const AccountCard({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final selectedAccount = ref.watch(selectedAccountProvider);
//     final accounts = ref.watch(accountsProvider);

//     // Example values (you can replace these with real data later)
//     const availableBalance = 24000.0;
//     const usedBalance = 5847.0;
//     final total = availableBalance + usedBalance;
//     final progress = usedBalance / total;

//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       margin: const EdgeInsets.all(16),
//       child: Padding(
//         padding: const EdgeInsets.all(screenWidth * 0.045),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Dropdown
//             DropdownButton<String>(
//               value: selectedAccount,
//               isExpanded: true,
//               icon: const Icon(Icons.arrow_drop_down),
//               underline: const SizedBox(),
//               onChanged: (value) {
//                 if (value != null) {
//                   ref.read(selectedAccountProvider.notifier).state = value;
//                 }
//               },
//               items: accounts.map((acc) {
//                 return DropdownMenuItem(
//                   value: acc,
//                   child: Text(
//                     acc,
//                     style: const TextStyle(fontWeight: FontWeight.w600),
//                   ),
//                 );
//               }).toList(),
//             ),

//             const SizedBox(height: 12),

//             // Progress bar
//             ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: LinearProgressIndicator(
//                 value: progress,
//                 minHeight: 8,
//                 backgroundColor: Colors.grey.shade200,
//                 color: Colors.blueAccent,
//               ),
//             ),

//             const SizedBox(height: 12),

//             // Balance info
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Available Balance',
//                       style: TextStyle(fontSize: 12, color: Colors.grey),
//                     ),
//                     Text(
//                       '24,000 QAR',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Text(
//                       'Used Balance',
//                       style: TextStyle(fontSize: 12, color: Colors.grey),
//                     ),
//                     Text(
//                       '5,847 QAR',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
