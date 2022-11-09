import 'package:flutter/material.dart';
import 'package:notetech_test/home.dart';
import 'package:notetech_test/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => Homeprovider(),
        builder: (context, child) => const Home(),
      ),
    );
  }
}
