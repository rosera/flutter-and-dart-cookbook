# Column Example (Old)

## Example
```
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Example';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column Example')),
      body: _buildColumnWidget(),
    );
  }

  Widget _buildColumnWidget() {
    return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
          SizedBox(
              height: 50,
              child: Card(
                  color: Colors.red,
                  child: Center(
                      child: Text("1. Watch YouTube",
                          style:
                              TextStyle(fontSize: 18, color: Colors.white))))),
          SizedBox(
              height: 50,
              child: Card(
                  color: Colors.red,
                  child: Center(
                      child: Text("2. Fix the code",
                          style:
                              TextStyle(fontSize: 18, color: Colors.white))))),
          SizedBox(
              height: 50,
              child: Card(
                  color: Colors.red,
                  child: Center(
                      child: Text("3. Update the code repo",
                          style:
                              TextStyle(fontSize: 18, color: Colors.white))))),
          SizedBox(
              height: 50,
              child: Card(
                  color: Colors.red,
                  child: Center(
                      child: Text("4. Take a break",
                          style:
                              TextStyle(fontSize: 18, color: Colors.white))))),
        ]));
  }
}

```
