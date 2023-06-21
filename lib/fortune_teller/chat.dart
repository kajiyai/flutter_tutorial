// チャット画面
import 'package:flutter/material.dart';

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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text('チャット画面だよ')]),
        ),
      ),
    );
  }
}
