import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage(this.user_name, this.password);
  final String user_name, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('セカンド'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              user_name,
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            Text(
              password,
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('前の画面へ'),
            ),
          ],
        ),
      ),
    );
  }
}
