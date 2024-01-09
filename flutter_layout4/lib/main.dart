import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeWidget(),
  ));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          body: ConstraintsWidget3(),
        ));
  }
}

class ConstraintsWidget3 extends StatelessWidget {
  const ConstraintsWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(color: Colors.blue,
              child: Text(
                'Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world!',
                style: TextStyle(fontSize: 30),)),
        ),
        Expanded(
          child: Container(color: Colors.red,
              child: Text('Hellow world!', style: TextStyle(fontSize: 30))),
        )
      ],
    );
  }
}


class ConstraintsWidget2 extends StatelessWidget {
  const ConstraintsWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        width: 500,
        color: Colors.blue,
        child: Center(
          child: OverflowBox(
            child: Container(
              width: 300,
              height: 700,
              color: Colors.green,
            ),
          ),
        )
    );
  }
}

class ConstraintsWidget1 extends StatelessWidget {
  const ConstraintsWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      color: Colors.blue,
      child: Center(
        child: Container(
          constraints: BoxConstraints.tight(Size(200, 200)),
          color: Colors.red,
          //padding: const EdgeInsets.all(8),
          child: Container(
            margin: const EdgeInsets.all(20),
            width: 50,
            height: 50,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
