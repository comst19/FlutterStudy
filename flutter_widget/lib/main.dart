import 'package:flutter/material.dart';

void main() {
  // runApp(
  //   MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //         actions: [
  //           IconButton(icon: Icon(Icons.home), onPressed: (){
  //             print('Tab!');
  //           },),
  //           Icon(Icons.play_arrow)
  //         ],
  //         title: Text('This is App bar'),
  //       ),
  //       body: TestWidget(),
  //       floatingActionButton: FloatingActionButton(
  //         child: Icon(Icons.bug_report),
  //           onPressed: (){
  //             print('Tab FAB!');
  //           },
  //       ),
  //     )
  //   )
  // );

  runApp(
    MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          title: Text(
            'Study to Container'
          ),
        ),
        body: CustomContainer(),
      )
    )
  );
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          'Hello, Flutter',
            style: TextStyle(
              fontSize: 60,
              color: Colors.black,
            ),
          ),
      ),
      );
  }
}


class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        decoration: BoxDecoration(
          // boxdecoration이 있을 경우 외부에 color x
          color: Color(0xFF9DDDE5),
          border: Border.all(color: Colors.red, width: 5, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color : Colors.black.withOpacity(0.3), offset: Offset(6, 6), blurRadius: 10, spreadRadius: 10),
            BoxShadow(color : Colors.blue.withOpacity(0.3), offset: Offset(-6, -6), blurRadius: 10, spreadRadius: 10)

          ]
        ),
        // margin: EdgeInsets.symmetric(vertical: 24, horizontal: 10),
        child: Center(child: Container(
          color: Colors.yellow,
            child: Text('Hello Container'))
        ),
      ),
    );
  }
}
