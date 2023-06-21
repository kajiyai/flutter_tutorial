import 'package:flutter/material.dart';

// import 'first_page.dart';
// import 'fortune_teller/show.dart';
import 'fortune_teller/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        // home: FirstPage()
        home: FortuneTellerIndex());
  }
}
