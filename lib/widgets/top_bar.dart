import 'package:coinbase_clone_flutter/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //Drawer on left, search and notification on right
      leading: GestureDetector(
        onTap: () {
          const AppDrawer(); //jump to drawer
        }, //jump to drawer screen index 0

        child: const Icon(
          Icons.menu,
          size: 25,
          color: Colors.black,
        ),
      ),
      actions: [
        const SizedBox(
          width: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Icon(Icons.search, color: Colors.black),
              SizedBox(
                width: 14,
              ),
              Icon(Icons.notifications, color: Colors.black)
            ],
          ),
        ),
      ],
      elevation: 0,
      backgroundColor: Colors.transparent,
      bottomOpacity: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      toolbarHeight: 50, systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }
}
