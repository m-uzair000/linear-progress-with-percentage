import 'package:flutter/material.dart';
import 'package:primer_progress_bar/primer_progress_bar.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
  final segments = const [
    Segment(
      color: Colors.green,
      value: 24,
      label: Text("Dart"),
      valueLabel: Text("24%"),
    ),
    Segment(
      color: Colors.lime,
      value: 11,
      label: Text("CSS"),
      valueLabel: Text("11%"),
    ),
    Segment(
      color: Colors.purple,
      value: 9,
      label: Text("HTML"),
      valueLabel: Text("9%"),
    ),
    Segment(
      color: Colors.lightBlue,
      value: 6,
      label: Text("Typescript"),
      valueLabel: Text("6%"),
    ),
    Segment(
      color: Colors.orange,
      value: 4,
      label: Text("Javascript"),
      valueLabel: Text("4%"),
    ),
    Segment(
      color: Colors.grey,
      value: 4,
      label: Text("Shell"),
      valueLabel: Text("4%"),
    ),
    Segment(
      color: Colors.indigo,
      value: 4,
      label: Text("Java"),
      valueLabel: Text("4%"),
    ),
    Segment(
      color: Colors.red,
      value: 4,
      label: Text("Objective-C"),
      valueLabel: Text("4%"),
    ),
    Segment(
      color: Colors.teal,
      value: 2,
      label: Text("Rust"),
      valueLabel: Text("2%"),
    ),
    Segment(
      color: Colors.brown,
      value: 2,
      label: Text("Swift"),
      valueLabel: Text("2%"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress with percentage"),
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Center(
          child: PrimerProgressBar(
            segments: segments,
          ),
        ),
      ),
    );
  }
}
