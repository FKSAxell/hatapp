import 'package:flutter/material.dart';
import 'package:hatapp/src/pages/gorra_desc_page.dart';
import 'package:hatapp/src/pages/gorra_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HatApp',
      debugShowCheckedModeBanner: false,
      // home: GorraPage(),
      home: GorraDescPage(),
    );
  }
}
