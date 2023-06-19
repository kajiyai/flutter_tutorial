import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const data = [
      Text("占い師の名前"),
      Text("占い師の一言説明"),
      Text("占い師のアイコン"),
      Text("占術の説明")
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('占い師詳細画面を作るよ')),
      body: Center(
          child: Card(
        child: ListView(children: data),
      )),
    );
  }
}
