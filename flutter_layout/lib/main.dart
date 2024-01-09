import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Widget을 상하좌우로 배치하기'),
      ),
      body: BodyScroll(),
    ),
  ));
}

class BodyScroll extends StatelessWidget {
  const BodyScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
        ],
      ),
    );
  }
}


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 80,
                color: Colors.red,
                child: Text('Container 1'),
              ),
              Container(
                width: 100,
                height: 80,
                color: Colors.green,
                child: Text('Container 2'),
              ),
              Container(
                width: 100,
                height: 80,
                color: Colors.blue,
                child: Text('Container 3'),
              ),
            ],
          ),
          Container(
            width: 300,
            height: 120,
            color: Colors.grey,
            child: Text('Container 4')
          )
        ],
      ),
    );
  }
    //   return Container(
  //     height: double.infinity,
  //     width: double.infinity,
  //     color: Colors.grey,
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Container(
  //           width: 100,
  //           height: 80,
  //           color: Colors.red,
  //           child: Text('Container 1'),
  //         ),
  //         Container(
  //           width: 100,
  //           height: 80,
  //           color: Colors.green,
  //           child: Text('Container 2'),
  //         ),
  //         Container(
  //           width: 100,
  //           height: 80,
  //           color: Colors.blue,
  //           child: Text('Container 3'),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
