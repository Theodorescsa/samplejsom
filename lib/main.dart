import 'package:flutter/material.dart';

import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MySampleState();
}

class _MySampleState extends State<MyHomePage> {
  List<Map<String, dynamic>> listtitle = [
    {
      'Ten': 'Ten1',
      'Thoi gian cham cong': 'Thoi gian 1',
      'chuc vu': 'Chuc vu 1'
    },
    {
      'Ten': 'Ten2',
      'Thoi gian cham cong': 'Thoi gian 2',
      'chuc vu': 'Chuc vu 2'
    },
    {
      'Ten': 'Ten3',
      'Thoi gian cham cong': 'Thoi gian 3',
      'chuc vu': 'Chuc vu 3'
    },
    {
      'Ten': 'Ten4',
      'Thoi gian cham cong': 'Thoi gian 4',
      'chuc vu': 'Chuc vu 4'
    },
  ];

  late List<dynamic> jsonList;

  @override
  void initState() {
    super.initState();
    String jsonString = jsonEncode(listtitle);

    jsonList = jsonDecode(jsonString);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: jsonList.map((item) {
            return Column(
              children: [
                Text('Ten: ${item["Ten"]}'),
                Text('Thoi gian cham cong: ${item["Thoi gian cham cong"]}'),
                Text('Chuc vu: ${item["chuc vu"]}'),
                SizedBox(height: 16),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
