import 'package:flutter/material.dart';
import 'package:hatapp/src/models/gorra_model.dart';

import 'package:hatapp/src/pages/gorra_page.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => GorraModel())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HatApp',
      debugShowCheckedModeBanner: false,
      home: GorraPage(),
      // home: GorraDescPage(),
    );
  }
}
