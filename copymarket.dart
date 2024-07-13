import 'package:flutter/cupertino.dart';
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
        appBar:AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color:Color(0xFFFFFFFF),
            ),
            // margin: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                child: Text(
                  '장한평역 ⬇️',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 20,)
                ),
                onPressed: (){},
              ),
            )
          ),
          actions: [
            IconButton(icon:Icon(Icons.call_end),onPressed: (){},),
            IconButton(icon:Icon(Icons.star),onPressed: (){},),
            IconButton(icon:Icon(Icons.star),onPressed: (){},),
          ]),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(color:Color(0xffdfdfdf)),
            color:Color(0xFFFFFFFF),
          ),
          child: Column(
            children: [
              Container( // container1
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color:Color(0xffdfdfdf))
                ),
                margin: EdgeInsets.all(10),
                child: Row(
                  children:[
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            '39DD1EF5-5BAD-4CEE-B586-79A90675328D.jpeg',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                        child: Container( // container2
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  '창문 너머로 비가 추적추적 내리고 있는 한적한 카페를 촬영한 사진',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '강원도 산골짜기 어딘가',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '210,000원',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.favorite),
                                    SizedBox(width: 4), // 아이콘과 텍스트 사이에 약간의 간격 추가
                                    Text('4'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
            ],
          ),
        )
        // bottomNavigationBar: ,
      )
    );
  }
}
