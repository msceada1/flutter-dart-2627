import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduccion_flutter/scroll/top_buttons.dart';

void main() {
  runApp(const MaterialApp(home: MyScroll1(), debugShowCheckedModeBanner: false,));
}

class MyScroll1 extends StatefulWidget {
  const MyScroll1({super.key});

  @override
  State<MyScroll1> createState() => _MyScroll1State();
}

class _MyScroll1State extends State<MyScroll1> {
  final ScrollController _scrollController = ScrollController();

  /* @override
  void initState() {
    super.initState();
    _scrollController.addListener();
  }

  */

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Color Me'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  Container(color: Colors.green, height: 200),
                  Container(color: Colors.red, height: 200),
                  Container(color: Colors.blue, height: 200),
                  Container(color: Colors.yellow, height: 200),
                  Container(color: Colors.deepPurpleAccent, height: 200),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
