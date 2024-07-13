import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyCupertinoApp());
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
            title:Text('박스임 ㅋ'),
            flexibleSpace:
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    // 박스 둥글기 조절
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // 그림자 색상 + 흐리기
                          color: Colors.red.withOpacity(.3),
                          spreadRadius: 5, // 그림자 범위 조정
                          blurRadius: 10,   // 그림자 흐리기 조정
                          offset: Offset(0,0), // 그림자 위치 조정
                          blurStyle: BlurStyle.normal,
                        ),
                      ],
                      // 외곽 넣기
                      border: Border.all(color:Colors.black),
                      color: Colors.orangeAccent  // 박스 컬러 설정
                  ),
              ),
            ),
        ),
        body:Container(
          width: double.infinity, height: 150, color : Colors.blue,
          padding: EdgeInsets.fromLTRB(10,10,10,10),
          child: Text('dddd'),
        )
      )
    );
  }
}
