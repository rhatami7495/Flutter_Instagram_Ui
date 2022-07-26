import 'package:flutter/material.dart';
import 'package:instagramui/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "اینستاگرام",

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Vazir',
        primaryColor: Colors.black,
        primaryIconTheme: const IconThemeData(
          color: Colors.black
        ),
        primaryTextTheme: const TextTheme(
          titleMedium: TextStyle(color: Colors.black),
          titleLarge: TextStyle(color: Colors.black),
          titleSmall: TextStyle(color: Colors.black),

        )
      ),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: MyHomePages(),
      ) ,
    );
  }

}


