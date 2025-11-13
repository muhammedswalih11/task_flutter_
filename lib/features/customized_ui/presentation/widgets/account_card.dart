import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasks_/features/customized_ui/presentation/controllers/providers.dart';

// class AccountCard extends ConsumerWidget {
//   const AccountCard({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final selectedAccount = ref.watch(selectedAccountProvider);
//     final accounts = ref.watch(accountsProvider);

//     const availableBalance = 24000.0;
//     const usedBalance = 5847.0;
//     final total = availableBalance + usedBalance;
//     final progress = usedBalance / total;

//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       margin: const EdgeInsets.all(16),
//       child: Padding(
//         padding: const EdgeInsets.all(15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Dropdown with label inside border
//             InputDecorator(
//               decoration: InputDecoration(
//                 labelText: 'Select Account',
//                 labelStyle: const TextStyle(
//                   fontSize: 12,
//                   color: Colors.grey,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 contentPadding: const EdgeInsets.symmetric(
//                   horizontal: 12,
//                   vertical: 8,
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: BorderSide(color: Colors.grey.shade300),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: BorderSide(color: Colors.grey.shade300),
//                 ),
//               ),
//               child: DropdownButtonHideUnderline(
//                 child: DropdownButton<String>(
//                   value: selectedAccount,
//                   isExpanded: true,
//                   icon: const Icon(Icons.arrow_drop_down),
//                   onChanged: (value) {
//                     if (value != null) {
//                       ref.read(selectedAccountProvider.notifier).state = value;
//                     }
//                   },
//                   items: accounts.map((acc) {
//                     return DropdownMenuItem(
//                       value: acc,
//                       child: Text(
//                         acc,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 15,
//                         ),
//                       ),
//                     );
//                   }).toList(),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 16),

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

class AccountCard extends ConsumerWidget {
  const AccountCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedAccount = ref.watch(selectedAccountProvider);
    final accounts = ref.watch(accountsProvider);

    final progress = 0.8;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputDecorator(
              decoration: InputDecoration(
                labelText: 'Select Account',
                labelStyle: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedAccount,
                  isExpanded: true,
                  icon: const Icon(Icons.arrow_drop_down),
                  onChanged: (value) {
                    if (value != null) {
                      ref.read(selectedAccountProvider.notifier).state = value;
                    }
                  },
                  items: accounts.map((acc) {
                    return DropdownMenuItem(
                      value: acc,
                      child: Text(
                        acc,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Available Balance',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      'Used Balance',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 8,
                    backgroundColor: Colors.grey.shade200,
                    color: Colors.blueAccent,
                  ),
                ),

                const SizedBox(height: 8),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '24,000 QAR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '5,847 QAR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
