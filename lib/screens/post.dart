import 'package:flutter/material.dart';
import 'package:instagram_ui/util/ExploreGrid.dart';
class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
      leading: Icon(Icons.arrow_back_ios),
      title:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('New Post',style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          
          Text('Next',style: TextStyle(color: Colors.blueAccent,fontWeight:FontWeight.bold ),)
        ],
      ) ,),
      body: Container(
        child: ExploreGrid(),
      ),
    );
  }
}