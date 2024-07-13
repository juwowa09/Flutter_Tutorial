import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: (){
            setState(() {
              a++;
            });
          }
        ),
        appBar: AppBar(
          title: Text('앱'),
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index){
            return ListTile(
              leading: Text(f[index].toString()),
              title: Text(name[index]),
              trailing: IconButton(icon: Icon(Icons.favorite),
                onPressed: (){setState(() {
                  f[index]++;
                });},
              ),
            );
          } ,
        ),
        )
      );
  }
}
