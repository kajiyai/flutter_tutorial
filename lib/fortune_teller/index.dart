// 占い師一覧画面
import 'package:flutter/material.dart';
import 'package:flutter_sampleapp_1/chat/index.dart';
import 'package:flutter_sampleapp_1/fortune_teller/show.dart';

class FortuneTellerIndex extends StatelessWidget {
  const FortuneTellerIndex({super.key});

  @override
  Widget build(BuildContext context) {
    const _teller_card = [
      Text("占い師の名前"),
      Text("占い師のアイコン"),
      Text("LLMからの占い師的一言"),
    ];
    const _reviews = [
      Text("レビューの合計数"),
      Text("レビューの平均値(?)"),
      Text("レビューの一覧ボタン"),
      Text("一番いいレビューのテキスト"),
    ];
    const _basic_info = [Text("相談数"), Text("お気に入り数")];
    const _detailed_info = [
      Text("鑑定項目"),
      Text("LLMからの占い師的一言"),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('占い師一覧画面を作るよ')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(child: Text('今日の占い的な奴？')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Column(children: [
                    Text('占い師の名前'),
                    Text('占い師のアイコン'),
                    Text('LLM占い師的一言'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FortunTellerShow()));
                      },
                      child: const Text('詳細ページに行く'),
                    ),
                  ])),
                  Container(
                      child: Column(children: [
                    Text('占い師の名前'),
                    Text('占い師のアイコン'),
                    Text('LLM占い師的一言'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FortunTellerShow()));
                      },
                      child: const Text('詳細ページに行く'),
                    ),
                  ])),
                  Container(
                      child: Column(children: [
                    Text('占い師の名前'),
                    Text('占い師のアイコン'),
                    Text('LLM占い師的一言'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FortunTellerShow()));
                      },
                      child: const Text('詳細ページに行く'),
                    ),
                  ])),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Column(children: [
                    Text('占い師の名前'),
                    Text('占い師のアイコン'),
                    Text('LLM占い師的一言'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FortunTellerShow()));
                      },
                      child: const Text('詳細ページに行く'),
                    ),
                  ])),
                  Container(
                      child: Column(children: [
                    Text('占い師の名前'),
                    Text('占い師のアイコン'),
                    Text('LLM占い師的一言'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FortunTellerShow()));
                      },
                      child: const Text('詳細ページに行く'),
                    ),
                  ])),
                  Container(
                      child: Column(children: [
                    Text('占い師の名前'),
                    Text('占い師のアイコン'),
                    Text('LLM占い師的一言'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FortunTellerShow()));
                      },
                      child: const Text('詳細ページに行く'),
                    ),
                  ])),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatList()));
                },
                child: const Text('チャット一覧画面へ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
