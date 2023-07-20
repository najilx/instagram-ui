import 'package:flutter/material.dart';
import 'package:instagram_ui/util/bubble_story.dart';
import 'package:instagram_ui/util/user_post.dart';

class MainPage extends StatelessWidget {
  final List people = [
    'najil',
    'anu',
    'ibu',
    'umma',
    'uppa',
    'mario',
    'spiderman'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Instagram',
            style: TextStyle(
                fontFamily: 'billabong', color: Colors.white, fontSize: 30),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            IconButton(onPressed: () {}, icon: Icon(Icons.send_sharp))
          ],
        ),
      body: Column(
        children: [
          Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: ((context, index) {
                    return BubbleStory(text: people[index]);
                  }))),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
              return UserPost(name: people[index],);
            }),
          )
        ],
      ),
    );
  }
}
