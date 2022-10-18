import 'package:coinbase_clone_flutter/pages/splash_page.dart';

import 'package:flutter/material.dart';

void main() => runApp(
      const MyApp(), // Wrap your app
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coinbase Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const SplashScreen(),
    );
  }
}
