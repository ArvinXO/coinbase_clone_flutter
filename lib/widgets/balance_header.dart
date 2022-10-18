import 'package:flutter/material.dart';

class BalanceBar extends StatelessWidget {
  final double balance;
  const BalanceBar({required this.balance, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your balance",
            style:
                TextStyle(color: Colors.black.withOpacity(.55), fontSize: 12),
          ),
          Text(
            "\$${balance.toStringAsFixed(2)}",
            style: const TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
