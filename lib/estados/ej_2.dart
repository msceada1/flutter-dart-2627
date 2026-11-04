import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: CounterScreen()));
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Text("${_counter}", style: TextStyle(fontSize: 40)),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _counter--;
                    });
                  },
                  icon: Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _counter = 0;
                    });
                  },
                  icon: Icon(Icons.refresh),
                ),
                IconButton(onPressed: _addCounter, icon: Icon(Icons.add)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _addCounter() {
    setState(() {
      _counter++;
    });
  }
}
