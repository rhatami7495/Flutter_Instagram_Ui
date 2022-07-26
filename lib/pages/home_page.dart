import 'package:flutter/material.dart';
import 'package:instagramui/list_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatelessWidget {
  final instaPost = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 3.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8.0),
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/229784066_1017825865697673_7736746121573483965_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent-iad3-1.cdninstagram.com&_nc_cat=109&_nc_ohc=jffZ4mdAPowAX-AXJRC&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT9bLGkA9JaEjfFrEvMZQ8Azw0J4UQLxZwaMuOl3JIpdVw&oe=62E630FA&_nc_sid=8fd12b"))),
                ),
                Text(
                  "Reza",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            )
          ],
        ),
      ),
      Row(
        children: [
          Expanded(
              child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgxKfC8O8Tw5T8dJDKzBfBGOV4e67SRd66bA&usqp=CAU",
            fit: BoxFit.fill,
          ))
        ],
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.heart),
                iconSize: 20,),
                IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.comment),
                    iconSize: 20),
                IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.paperPlane),
                    iconSize: 20),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.bookmark),
                iconSize: 20)
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          "Adapted by screenwriter Robert Nelson Jacobs, Chocolat tells the story of Vianne Rocher, played by Juliette Binoche, who arrives in the fictional French village ...",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/229784066_1017825865697673_7736746121573483965_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent-iad3-1.cdninstagram.com&_nc_cat=109&_nc_ohc=jffZ4mdAPowAX-AXJRC&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT9bLGkA9JaEjfFrEvMZQ8Azw0J4UQLxZwaMuOl3JIpdVw&oe=62E630FA&_nc_sid=8fd12b"))),
              margin: EdgeInsets.symmetric(horizontal: 5.0),
            ),
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "add new message...",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
            ))
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          "1 day ago",
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return index == 0
            ? SizedBox(
                child: ListStories(),
                height: deviceSize.height * .15,
              )
            : Padding(
                padding: EdgeInsets.only(
                  top: 16.0,
                ),
                child: instaPost,
              );
      },
    );
  }
}
