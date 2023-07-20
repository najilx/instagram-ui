import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/mainpage.dart';
import 'package:instagram_ui/screens/porfile.dart';
import 'package:instagram_ui/screens/post.dart';
import 'package:instagram_ui/screens/reels.dart';
import 'package:instagram_ui/screens/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigationBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _childern = [
   MainPage(),
   SearchPage(),
   PostPage(),
   ReelPage(),
   PorfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: _childern[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          onTap: _navigationBottomNavBar,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_rounded), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded), label: ''),
          ],
        ));
  }
}
