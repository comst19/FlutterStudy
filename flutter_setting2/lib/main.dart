import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Body(),
      appBar: AppBar(
        title: Text("Flutter에서 외부 라이브러리를 쓰기"),
      ),
    ),
  ));
}


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return RandomWords();
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {

    final wordList = generateWordPairs().take(5).toList();
    final widgets = wordList.map((word) => Text(word.asString, style: TextStyle(fontSize: 32),)).toList();
    
    return Column(
      children: widgets,
    );
  }
}
