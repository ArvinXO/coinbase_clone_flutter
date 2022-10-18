import 'package:flutter/material.dart';

import '../util/theme.dart';

class TradeToolbar extends StatelessWidget {
  const TradeToolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconTopBar(
          text: "Buy",
          icon: Icons.add,
          onPressed: () {},
        ),
        IconTopBar(
          text: "Sell",
          icon: Icons.remove,
          onPressed: () {},
        ),
        IconTopBar(
          text: "Send",
          icon: Icons.upload,
          onPressed: () {},
        ),
        IconTopBar(
          text: "Convert",
          icon: Icons.repeat,
          onPressed: () {},
        ),
        IconTopBar(
          text: "More",
          icon: Icons.more_horiz,
          onPressed: () {},
        ),
      ],
    );
  }
}

class IconTopBar extends StatelessWidget {
  const IconTopBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //rounded
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(65),
            color: CoinbaseTheme.color,
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, size: 25, color: Colors.white),
          ),
        ),
        const SizedBox(height: 15),
        Text(
          text,
          style:
              TextStyle(fontSize: 12, height: .1, color: CoinbaseTheme.color),
        )
      ],
    );
  }
}
