import 'package:flutter/material.dart';

class ListStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: [
          Text(
            "watch all",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Icon(Icons.play_arrow)
        ],
      )
    ],
  );

  final stories = Expanded(
      child: Padding(
    padding: EdgeInsets.only(top: 8.0),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 8,
      itemBuilder: (context, index) {
        return Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/229784066_1017825865697673_7736746121573483965_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent-iad3-1.cdninstagram.com&_nc_cat=109&_nc_ohc=jffZ4mdAPowAX-AXJRC&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT9bLGkA9JaEjfFrEvMZQ8Azw0J4UQLxZwaMuOl3JIpdVw&oe=62E630FA&_nc_sid=8fd12b"))),
              margin: EdgeInsets.symmetric(horizontal: 5.0),
            ),
            index == 0
                ? Positioned(
                    right: 10.0,
                    bottom: 0.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 10.0,
                      child: Icon(
                        Icons.add,
                        size: 14.0,
                        color: Colors.white,
                      ),
                    ))
                : Container()
          ],
        );
      },
    ),
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [topText, stories],
      ),
    );
  }
}
