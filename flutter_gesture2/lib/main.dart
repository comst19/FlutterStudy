import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Body(),
      appBar: AppBar(
        title: Text('Flutter의 Callback'),
      ),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Count : $value',
          style: const TextStyle(fontSize: 30),
        ),
        TestButton(addCounter, addCounter1),
      ]),
    );
  }

  void addCounter()=> setState(() => ++value);
  void addCounter1(int addValue) => setState(() => value = addValue + value);
}

class TestButton extends StatelessWidget {
  const TestButton(this.callback, this.callback1, {super.key});

  final VoidCallback callback;
  final Function(int) callback1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child: InkWell(
        onTap: () => callback.call(),
        onLongPress: () => callback1.call(2),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text(
              'Up Count',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
