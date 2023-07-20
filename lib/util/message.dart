import 'package:flutter/material.dart';
class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
      leading: Icon(Icons.arrow_back_ios),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('__najil__',style: TextStyle(fontWeight: FontWeight.bold),),
          Icon(Icons.video_call_rounded),
          Icon(Icons.note_alt_outlined)
        ],
      ),),
    );
  }
}