import 'package:coinbase_clone_flutter/widgets/gift_tile.dart';
import 'package:coinbase_clone_flutter/widgets/pay_send_receive_bar.dart';
import 'package:coinbase_clone_flutter/widgets/recent_sends_tile.dart';
import 'package:flutter/material.dart';

import '../widgets/coinbase_bottom_bar.dart';
import '../widgets/top_bar.dart';
import '../widgets/transactions_tile.dart';

class PayPage extends StatefulWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  int selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: const [
              TopBar(),
              GiftTile(),
              RecentSends(),
              Transactions(),
            ],
          ),
        ),
      ),
      floatingActionButton: const SendReceiveBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: CoinbaseBottomBar(
        selectedIndex: (i) {
          // change the page according to the index
          // uncomment in case you want to implement more pages and make sure
          // to create a _selectedIndex variable

          // setState((){
          //   _selectedIndex = i;
          // })
        },
      ),
    );
  }
}
