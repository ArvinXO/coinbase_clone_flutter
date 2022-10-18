import 'package:flutter/material.dart';

//Drawer with list tiles
class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            IconButton(
              onPressed: () {}, //jump to overview screen
              icon: const Icon(
                Icons.close,
                size: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: const Text(
                  "Estelle Raynor",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "ID: 556734",
                  style: TextStyle(color: Colors.black.withOpacity(.5)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    size: 20,
                  ),
                ),
                onTap: () => {}, //jump to profile screen
              ),
            ),
          ],
        ),
      ),
    );
  }
}
