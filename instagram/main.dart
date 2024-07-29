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


  var pictures = [];
  List<String> names = [];
  List<int> likes = [];
  List<String> details = [];
  addPictures(var data){
    setState((){
      pictures.add(data);
    });
  }
  addNames(var data){
    setState((){
      names.add(data);
    });
  }
  addLikes(var data){
    setState((){
      likes.add(data);
    });
  }
  addDetails(var data){
    setState((){
      details.add(data);
    });
  }
  increaseLike(index){
    setState((){
      likes[index]++;
    });
  }
  getData() async{
    var result = await http.get(Uri.parse('https://codingapple1.github.io/app/data.json'));
    var data = jsonDecode(result.body);
    print(result.body);
    print(data);
    for(int i = 0; i < data.length; i++)
    {
      addDetails(data[i]['content']);
      addLikes(data[i]['likes']);
      addNames(data[i]['user']);
      addPictures(data[i]['image']);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('get');
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
        itemCount: likes.length,
        itemBuilder: (context, i){
          return home(index:i,likes:likes,names:names,pictures:pictures,details:details,addLike:increaseLike );
        },),
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

      // Container(
      //   decoration: BoxDecoration(
      //       color:Colors.white,
      //       border: Border.all(
      //           color: Color(0xffd6d6d6))),
      //   child:Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children:[
      //       IconButton(
      //         icon:Icon(Icons.home_outlined),
      //         onPressed: (){
      //           setState((){
      //             tab=0;
      //           });
      //         },
      //       ),
      //       IconButton(
      //         icon:Icon(Icons.shopping_bag_outlined),
      //         onPressed: (){
      //           setState((){
      //             tab=1;
      //           });
      //         },
      //       ),
      //     ],
      //   ),
      // )

    );
  }
}

class home extends StatelessWidget {
  const home({super.key,this.index,this.names,this.likes,this.details,this.pictures,this.addLike});
  final index;
  final likes;
  final names;
  final pictures;
  final details;
  final addLike;

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      child: Column(
          children:[
            Image.network(pictures[index]),
            Container(
              margin:EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Row(children: [
                    IconButton(
                      icon:Icon(Icons.favorite),
                      onPressed: (){addLike(index);},
                    ),
                    Text(likes[index].toString()),
                  ]),
                  Text(names[index]),
                  Text(details[index]),
              ],),
            ),
          ],
      ),
    );
  }
}
