// チャット画面
import 'package:flutter/material.dart';
import './show.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = [
      "アイコン チャットルームへ飛ぶ",
      "アイコン チャットルームへ飛ぶ",
      "アイコン チャットルームへ飛ぶ",
      "アイコン チャットルームへ飛ぶ",
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('ListView'),
            ),
            body: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                if (index >= list.length) {
                  list.addAll([
                    "アイコン チャットルームへ飛ぶ",
                    "アイコン チャットルームへ飛ぶ",
                    "アイコン チャットルームへ飛ぶ",
                    "アイコン チャットルームへ飛ぶ",
                  ]);
                }
                return _messageItem(list[index]);
              },
            )));
  }

  Widget _messageItem(String title) {
    return Container(
      decoration: new BoxDecoration(
          border:
              new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
        onTap: () {
          print("おしたよ");
        }, // タップ
        onLongPress: () {
          print("onLongTap called.");
        }, // 長押し
      ),
    );
  }
}
