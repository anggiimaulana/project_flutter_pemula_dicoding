import 'package:flutter/material.dart';
import 'package:proyek_akhir_flutter_pemula_dicoding/view/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyIndramayu',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}