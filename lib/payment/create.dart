// お支払い情報入力画面
import 'package:flutter/material.dart';
import 'package:flutter_sampleapp_1/payment/confirm.dart';

class CreatePayment extends StatelessWidget {
  // SecondPageに渡すテキスト
  String param_price = '';
  String param_user_name = '';
  String param_user_name_kana = '';
  String param_credit_number = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お支払い画面'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '料金',
                ),
                onChanged: (input) {
                  param_price = input;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ユーザー名',
                ),
                onChanged: (input) {
                  param_user_name = input;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ユーザー名(かな)',
                ),
                onChanged: (input) {
                  param_user_name_kana = input;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'クレジットカード番号',
                ),
                onChanged: (input) {
                  param_credit_number = input;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmPage(
                            param_price,
                            param_user_name,
                            param_user_name_kana,
                            param_credit_number),
                        fullscreenDialog: false,
                      ));
                },
                child: const Text('次の画面へ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
