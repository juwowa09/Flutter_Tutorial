import 'package:flutter/material.dart';

var a = ThemeData(
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: Colors.red,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
    )
  ),
  iconTheme:IconThemeData(color:Colors.black,),
  appBarTheme:AppBarTheme(
    color:Colors.white,
    titleTextStyle: TextStyle(color:Colors.black,fontSize:25),
    actionsIconTheme: IconThemeData(color: Colors.black,),
  ),
  textTheme:TextTheme(),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.blue,
    elevation: 10,
    unselectedItemColor: Colors.black,
  ),
);