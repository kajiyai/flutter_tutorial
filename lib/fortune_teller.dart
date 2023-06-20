import 'package:flutter/material.dart';
import 'package:flutter_sampleapp_1/first_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const _teller_card = [
      Text("占い師の名前"),
      Text("占い師のアイコン"),
      Text("料金体系"),
      Text("お気に入り追加ボタン")
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
      appBar: AppBar(title: const Text('占い師詳細画面を作るよ')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(children: _teller_card),
            ),
            Expanded(
              child: ListView(children: _reviews),
            ),
            Expanded(
              child: ListView(children: _basic_info),
            ),
            Expanded(
              child: ListView(children: _detailed_info),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
              child: const Text('鑑定する'),
            ),
          ],
        ),
      ),
    );
  }
}
