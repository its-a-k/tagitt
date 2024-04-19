import 'package:flutter/material.dart';
import 'package:tagit/interface/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}
// hello

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TagIT',
      debugShowCheckedModeBanner: false,
      home:  MainPage(),
    );
  }
}