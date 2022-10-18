import 'package:coinbase_clone_flutter/pages/home_page.dart';
import 'package:coinbase_clone_flutter/pages/pay_page.dart';
import 'package:flutter/material.dart';

// import '../util/theme.dart';
import '../util/theme.dart';

class CoinbaseBottomBar extends StatefulWidget {
  final Function(int) selectedIndex;
  const CoinbaseBottomBar({required this.selectedIndex, Key? key})
      : super(key: key);

  @override
  State<CoinbaseBottomBar> createState() => _CoinbaseBottomBarState();
}

class _CoinbaseBottomBarState extends State<CoinbaseBottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar(
                  text: "Home",
                  icon: Icons.home,
                  selected: _selectedIndex == 0,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                      widget.selectedIndex(0);
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return const HomePage();
                      }));
                    });
                  }),
              IconBottomBar(
                  text: "Assets",
                  icon: Icons.pie_chart,
                  selected: _selectedIndex == 1,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                      widget.selectedIndex(1);
                    });
                  }),
              IconBottomBar(
                  text: "Trade",
                  icon: Icons.money,
                  selected: _selectedIndex == 2,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                      widget.selectedIndex(2);
                    });
                  }),
              IconBottomBar(
                  text: "Pay",
                  icon: Icons.circle_outlined,
                  selected: _selectedIndex == 3,
                  onPressed: () {
                    setState(() {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return const PayPage();
                      }));
                      _selectedIndex = 3;
                      widget.selectedIndex(3);
                      //Push pay page
                    });
                  }),
              IconBottomBar(
                  text: "Browser",
                  icon: Icons.web,
                  selected: _selectedIndex == 4,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 4;
                      widget.selectedIndex(4);
                      //Push pay page
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon,
              size: 25,
              color: selected
                  ? CoinbaseTheme.color
                  : Colors.black.withOpacity(.75)),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12,
              height: .1,
              color: selected
                  ? CoinbaseTheme.color
                  : Colors.black.withOpacity(.75)),
        )
      ],
    );
  }
}
