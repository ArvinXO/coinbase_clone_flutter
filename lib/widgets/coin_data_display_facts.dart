import 'package:flutter/material.dart';

import '../model/coin.dart';
import '../util/theme.dart';

class CoinDataFacts extends StatefulWidget {
  final Coin coin;

  const CoinDataFacts({super.key, required this.coin});

  @override
  State<CoinDataFacts> createState() => _CoinDataFactsState();
}

class _CoinDataFactsState extends State<CoinDataFacts> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            widget.coin.fullName,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.coin.ticker,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Additional information:",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Algorithm: ${widget.coin.algorithm}",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          Text(
            "Block number: ${widget.coin.blockNumber.toStringAsFixed(2)}",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          Text(
            "Block reward: ${widget.coin.blockReward.toStringAsFixed(2)}",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          Text(
            "Block time: ${widget.coin.blockTime.toStringAsFixed(2)}",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          Text(
            "Max supply: ${widget.coin.maxSupply}",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 25,
          ),
          // create a blue button that centers the text and has the entire width of the screen
          ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0))),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 15)),
                backgroundColor:
                    MaterialStateProperty.all(CoinbaseTheme.color)),
            child: const Text(
              "Trade",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
