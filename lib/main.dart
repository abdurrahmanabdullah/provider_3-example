import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  final String data = 'abdullah';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data),
      ),
      body: Screen2(
        data: data,
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key, required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Screen3(data: data);
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key, required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Screen4(
        data: data,
      ),
    );
  }
}

class Screen4 extends StatefulWidget {
  const Screen4({super.key, required this.data});
  final String data;

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.data),
          ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text('change data'))
        ],
      ),
    );
  }
}