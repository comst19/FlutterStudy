import 'package:flutter/material.dart';

const assetImagePath = 'assets/images';
const appLogoImage = '$assetImagePath/app_logo.png';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Body(),
      appBar: AppBar(
        title: Text('Flutter에서 로컬 데이터 활용하기'),
      ),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(appLogoImage),
    );
  }
}
