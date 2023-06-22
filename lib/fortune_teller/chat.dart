// チャット画面
import 'package:flutter/material.dart';
import './appraisal.dart';

class Chat extends StatelessWidget {
  // SecondPageに渡すテキスト

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('チャット画面'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '相談内容を入力',
              ),
              onChanged: (input) {},
            ),
            const Text('チャット画面にしたいよ'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Appraisal()));
              },
              child: const Text('鑑定する'),
            )
          ]),
        ),
      ),
    );
  }
}
