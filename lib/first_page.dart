import 'package:flutter/material.dart';
import 'package:flutter_sampleapp_1/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ファースト'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                      fullscreenDialog: false,
                    ));
              },
              child: const Text('次の画面へ'),
            ),
            Row(
              children: [
                Text('foo'),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.pink,
                ),
                Text('red'),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Text('blue'),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                ),
                Text('foo'),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.pink,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
