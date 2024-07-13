import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var a = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
              floatingActionButton: FloatingActionButton(
                      child:Text(a.toString()),
                      onPressed: (){
                              a++;
                              print(a);
                      },
              ),
        // appBar: ,
        body: ListView.builder(
                itemCount:40,
                itemBuilder: (c, i){
                        print(i);
                        return ListTile(
                            leading: Icon(Icons.contacts),
                            title:Text('King'));
                },
        ),
        bottomNavigationBar: BottomAppBar(),
      )
    );
  }
}

//  Custom Widget -> be maked class
class BottomAppBar extends StatelessWidget {
  const BottomAppBar({super.key});

  @override
  build(context) {
    return const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
        children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
        ],
    );
  }
}
