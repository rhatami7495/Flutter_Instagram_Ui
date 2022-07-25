import 'package:flutter/material.dart';
import 'package:instagramui/list_stories.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return index == 0
            ? SizedBox(
                child: ListStories(),
                height: deviceSize.height*.15,
              )
            : Container();
      },
    );
  }
}
