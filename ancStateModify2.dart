import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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

  var total = 3;
  var name =['김영숙','홍길동','피자집'];
  var f = [0,0,0];

  addOne(){
    setState((){total++;});
  }
  addName(String newName){
    setState((){
      name.add(newName);
      f.add(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
          appBar:AppBar(title:Text(total.toString())),
          floatingActionButton: Builder(
              builder: (con) { // 족보 생성기
                return FloatingActionButton(
                  onPressed: (){
                    showDialog(context: con, builder:(context){
                      return DUI(addOne : addOne, addName:addName, name: name);
                    }
                    );
                    },
                );
              }
              ),
          body: ListView.builder(
            itemCount: name.length,
            itemBuilder: (context, index){
              return ListTile(
                leading: Icon(Icons.phone),
                title: Text(name[index]),
                trailing: TextButton(child: Text('Delete'),
                  onPressed: (){setState(() {
                    name.removeAt(index);
                    f.removeAt(index);
                  });},
                ),
              );
            } ,
          ),
        )
    );
  }
}

class DUI extends StatelessWidget {
  DUI({super.key, this.addOne, this.addName, this.name});
  final addOne;
  final addName;
  final name;
  var inputData = TextEditingController();
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
              child:Text('뭘 봐')
            ),

            Container(
              margin:EdgeInsets.all(10),
              child: TextField(controller: inputData),
            ),

            Container(margin: EdgeInsets.all(10),
              child: Row(mainAxisAlignment:
              MainAxisAlignment.end,
                  children:
                  [
                    TextButton(child:Text('Cancel'),onPressed:(){
                      Navigator.pop(context);
                    }),

                    TextButton(
                        child:Text('OK'),
                        onPressed:(){
                          addOne();
                          if (inputData.text.trim().isEmpty)
                            Navigator.pop(context);
                          else {
                            addName(inputData.text);
                            mergeSort(name);
                            Navigator.pop(context);
                          }
                        }
                        ),
                  ]),
            )
          ]
      ),
    )
    );
  }
}