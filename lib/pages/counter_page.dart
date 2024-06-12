import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  void _incrementCounter() {
    // setstate is used for stateful widgets to rebuild the widgets
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You pushed the button this many times"),
          Text(
            _counter.toString(),
            style: TextStyle(fontSize: 40),
          ),

          // button
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text("Increment!"),
          ),
        ],
      )),
    );
  }
}
