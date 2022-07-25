import 'package:flutter/material.dart';
import 'package:instagramui/pages/favorit_page.dart';
import 'package:instagramui/pages/home_page.dart';
import 'package:instagramui/pages/plus_page.dart';
import 'package:instagramui/pages/profile_page.dart';
import 'package:instagramui/pages/search_page.dart';


class MyHomePages extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyHomePagesstate();

}


class MyHomePagesstate extends State<MyHomePages>{

  String currentPage = "home";
  final Map<String , Widget> children = <String , Widget>{
    'home':HomePage(),
    'search':SearchPage(),
    'plus':PlusPage(),
    'favorite':FavoritPage(),
    'profile':ProfilePage(),
  };


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

  changePages(String namePage){
    setState((){
      currentPage = namePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: this.children[currentPage],
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 60.0,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){
                changePages('home');
              }, icon: Icon(Icons.home,color: Colors.black)),
              IconButton(onPressed: (){
                changePages('search');
              }, icon: Icon(Icons.search,color: Colors.black)),
              IconButton(onPressed: (){
                changePages('plus');
              }, icon: Icon(Icons.add_box,color: Colors.black)),
              IconButton(onPressed: (){
                changePages('favorite');
              }, icon: Icon(Icons.favorite,color: Colors.black)),
              IconButton(onPressed: (){
                changePages('profile');
              }, icon: Icon(Icons.account_box,color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }

}


// class MyHomePagesstate extends State<MyHomePages>{
//
//   int currentPage = 0;
//   final List children = [
//     HomePage(),
//     SearchPage(),
//     PlusPage(),
//     FavoritPage(),
//     ProfilePage(),
//   ];
//
//
//   final appBar = AppBar(
//     backgroundColor: const Color(0xfff8faf8),
//     elevation: 1.0,
//     centerTitle: true,
//     leading: Icon(Icons.camera_alt,
//         color: Colors.black),
//     title: SizedBox(
//         height: 55.0,
//         child:Image.asset("assets/images/instagram.png")
//     ),
//     actions: const [
//       Padding(padding: EdgeInsets.only(right: 12),
//         child: Icon(Icons.send,color: Colors.black,),
//       )
//     ],
//   );
//
//   changePages(int state){
//     setState((){
//       currentPage = state;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appBar,
//       body: this.children[currentPage],
//      bottomNavigationBar: BottomNavigationBar(
//        onTap: changePages,
//        currentIndex: currentPage,
//        items: const [
//          BottomNavigationBarItem(
//            label: "Home",
//              icon: Icon(Icons.home)),
//          BottomNavigationBarItem(
//              label: "Search",
//              icon: Icon(Icons.search)),
//          BottomNavigationBarItem(
//              label: "Plus",
//              icon: Icon(Icons.add_box))
//        ],
//      ),
//     );
//   }
//
// }

