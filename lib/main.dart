import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Placeholder';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Placeholder(
              color: Color(0xFFFBE0E6),
              strokeWidth: 12.0,
              fallbackHeight: 100.0,
              fallbackWidth: 100.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 200.0,
                  width: 100.0,
                ),
                child: Placeholder(
                  color: Color(0xFF1B1F32),
                  strokeWidth: 8.0,
                  fallbackHeight: 10.0,
                  fallbackWidth: 100.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                height: 250.0,
                width: 250.0,
                child: Placeholder(
                  color: Color(0xFFC41A3B),
                  strokeWidth: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
