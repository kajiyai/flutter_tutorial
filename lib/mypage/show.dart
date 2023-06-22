// チャット画面
import 'package:flutter/material.dart';

class Mypage extends StatelessWidget {
  // SecondPageに渡すテキスト

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('マイページ'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('基本情報'),
            Text('ユーザー名'),
            Text('メールアドレス'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('戻る'),
            )
          ]),
        ),
      ),
    );
  }
}
