import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './style.dart' as style;
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(
      MaterialApp(
        theme: style.a,
        home: Myapp(),
      )
  );
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var data = [];

  getData() async{
    var result = await http.get(Uri.parse('https://codingapple1.github.io/app/data.json'));
    print(result.body);
    setState(() {
      data = jsonDecode(result.body);
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  int tab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment:Alignment.centerLeft,
            child: Text('Instagram')
        ),
        actions:[
          IconButton(
            icon:Icon(Icons.add_box_outlined),
            onPressed:(){},
          ),
        ]
      ),
      body:[
        ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, i){
          return
            home(index:i, data:data);
        },
        ),
        TextButton(child:Text('ㅂㅇ'),onPressed:(){}),
        TextButton(child:Text('ㅋㅋ'),onPressed:(){}),
      ][tab],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label:'home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label:'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.phone),label:'phone'),
        ],
        currentIndex: tab,
        onTap:(ii){
          setState((){
            tab = ii;
          });
        },
      )
    );
  }
}

class home extends StatelessWidget {
  const home({super.key,this.data,this.index});
  final data;
  final index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      child: Column(
          children:[
            Image.network(data[index]['image']),
            Container(
              margin:EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Row(children: [
                    IconButton(
                      icon:Icon(Icons.favorite),
                      onPressed: (){;},
                    ),
                    Text(data[index]['likes'].toString()),
                  ]),
                  Text(data[index]['user']),
                  Text(data[index]['content']),
              ],),
            ),
          ],
      ),
    );
  }
}
