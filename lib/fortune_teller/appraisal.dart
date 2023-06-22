// チャット画面
import 'package:flutter/material.dart';
import './index.dart';

class Appraisal extends StatelessWidget {
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
            const Text('大きめの画像がはいるよ'),
            const Text('LLMによる説明が入るよ'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FortuneTellerIndex()));
                    },
                    child: const Text('ホームに戻る'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('もう一度鑑定する'),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
