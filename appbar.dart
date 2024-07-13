import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ㅋㅋ')),
        body: SizedBox(
          child: Text('하이용',
            style: TextStyle( fontSize:15 , color: Color(0x6ba51111)
                ,backgroundColor: Color(0xFF000000),
              fontWeight: FontWeight.w500,
            )
          )
        ),
        bottomNavigationBar:SizedBox(
            child: Icon(
                Icons.star,
                color: Color(0xFF000000),
                size: 30)
        )
      )
    );
  }
}
