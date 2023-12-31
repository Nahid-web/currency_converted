import 'package:currency_converted/home_page_cupertinoapp.dart';
import 'package:currency_converted/home_page_materialapp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: HomePageMaterialApp(),
    );
  }
}
class MyAppCupertino extends StatelessWidget {
  const MyAppCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomePageCupertinoApp(),
    );
  }
}
