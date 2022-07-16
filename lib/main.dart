import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("カウンターアプリ"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    list[index].toString(),
                    style: TextStyle(fontSize: 24),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                child: Icon(Icons.remove),
                onPressed: () {
                  if (list.length != 0) {
                    setState(() {
                      list.removeLast();
                    });
                  }
                },
              ),
              ElevatedButton(
                child: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    list.add(list.length);
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
