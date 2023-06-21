// お支払い情報確認画面
import 'package:flutter/material.dart';
import 'package:flutter_sampleapp_1/fortune_teller/chat.dart';

class ConfirmPage extends StatelessWidget {
  ConfirmPage(
      this.price, this.user_name, this.user_name_kana, this.credit_card_number);
  final String price, user_name, user_name_kana, credit_card_number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[700],
        title: const Text('お支払い確認画面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              price,
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            Text(
              user_name,
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            Text(
              user_name_kana,
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            Text(
              credit_card_number,
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('修正する'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Chat()));
                  },
                  child: const Text('購入確定'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
