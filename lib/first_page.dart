import 'package:flutter/material.dart';
import 'package:flutter_sampleapp_1/second_page.dart';

class FirstPage extends StatelessWidget {
  // SecondPageに渡すテキスト
  String param_user_name = '';
  String param_password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン画面'),
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
                  labelText: 'ユーザー名',
                ),
                onChanged: (input) {
                  param_user_name = input;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'パスワード',
                ),
                onChanged: (input) {
                  param_password = input;
                },
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SecondPage(param_user_name, param_password),
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
