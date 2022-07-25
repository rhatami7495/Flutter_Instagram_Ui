import 'package:flutter/material.dart';

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
        primaryIconTheme: const IconThemeData(
          color: Colors.black
        ),
        primaryTextTheme: const TextTheme(
          titleMedium: TextStyle(color: Colors.black),
          titleLarge: TextStyle(color: Colors.black),
          titleSmall: TextStyle(color: Colors.black),

        )
      ),
      home: MyHomePage() ,
    );
  }

}


class MyHomePage extends StatelessWidget{

  final appBar = AppBar(
    backgroundColor: const Color(0xfff8faf8),
    elevation: 1.0,
    centerTitle: true,
    leading: Icon(Icons.camera_alt,
        color: Colors.black),
    title: SizedBox(
      height: 55.0,
      child:Image.asset("assets/images/instagram.png")
    ),
    actions: const [
      Padding(padding: EdgeInsets.only(right: 12),
      child: Icon(Icons.send,color: Colors.black,),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 60.0,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              IconButton(onPressed: null, icon: Icon(Icons.home,color: Colors.black)),
              IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.black)),
              IconButton(onPressed: null, icon: Icon(Icons.add_box,color: Colors.black)),
              IconButton(onPressed: null, icon: Icon(Icons.favorite,color: Colors.black)),
              IconButton(onPressed: null, icon: Icon(Icons.account_box,color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }

}

