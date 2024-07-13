import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
            flexibleSpace: Container(
              child: ElevatedButton(
                child: Text(
                  'king',
                  style: TextStyle(
                    fontSize:15,
                    color:Color(0xff4213b8)
                ),
              ),
                onPressed: (){},
                style: ButtonStyle(

                ),
              ),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border:Border.all(),
                borderRadius: BorderRadius.circular(15),
                color: Colors.amber
              ),
            )
        ),
        // body:,
        // bottomNavigationBar:
      )
    );
  }
}
