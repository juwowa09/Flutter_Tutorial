import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var a = 0;
  var name =['김영숙','홍길동','피자집'];
  var f = [0,0,0];

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
          floatingActionButton: Builder(
            builder: (con) { // 족보 생성기
              return FloatingActionButton(
                  child: Text(a.toString()),
                  onPressed: (){
                    showDialog(context: con, builder:(context){
                      return DUI(states : a);
                    }
                    );
                  }
                  );
            }
            )
        )
    );
  }
}


class DUI extends StatelessWidget {
  const DUI({super.key, this.states});
  final states;

  @override
  Widget build(BuildContext context) {
    return Dialog(child:
    Container(alignment:Alignment.center,
      width: 100,
      height:200,
      child: Column(mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children:
          [
            Container(margin:EdgeInsets.all(20),
              alignment: Alignment.topLeft,
              child : Text(states.toString()),
            ),
            TextField(),
            Container(margin: EdgeInsets.all(10),
              child: Row(mainAxisAlignment:
              MainAxisAlignment.end,
                  children:
                  [
                    TextButton(child:Text('Cancel'),onPressed:(){
                      Navigator.pop(context);
                    }),

                    TextButton(child:Text('OK'),onPressed:(){}),

                  ]),
            )
          ]
      ),
    )
    );
  }
}