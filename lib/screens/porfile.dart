import 'package:flutter/material.dart';
import 'package:instagram_ui/util/account_post.dart';
import 'package:instagram_ui/util/account_reels.dart';
import 'package:instagram_ui/util/account_tag.dart';
import 'package:instagram_ui/util/bubble_story.dart';
class PorfilePage extends StatelessWidget {
  const PorfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     Column(
                    children: [
                      Text('45',style: TextStyle(fontWeight: FontWeight.bold,fontSize:24 ),
                      ),
                      Text('Posts')
                    ],
                  ),
                  SizedBox(width: 20,),
                    Column(
                    children: [
                      Text('922',style: TextStyle(fontWeight: FontWeight.bold,fontSize:24 ),
                      ),
                      Text('Followers')
                    ],
                  ),
                  SizedBox(width: 20,),
                    Column(
                    children: [
                      Text('1,237',style: TextStyle(fontWeight: FontWeight.bold,fontSize:24 ),
                      ),
                      Text('Following')
                    ],
                  ),
                  ],
                  
                 ),
           
           
                ],
                
              ),
              
            ),
             Padding(
               padding: const EdgeInsets.only(left: 20),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Najil Arfak',style: TextStyle(fontWeight: FontWeight.bold)),
                       Text('hakunna matta'),
                       Text('Yee how 🤠') 
             
                    ],
                       ),
                 ],
               ),
             ),
             Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
             child: Row(children: [
              BubbleStory(text: 'Sibs❤️'),
              BubbleStory(text: 'game🖤'),
              BubbleStory(text: 'Guitar🎶🎸'),
              BubbleStory(text: 'Ootd🤪💕'),
             ]),),
             Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: Text('Edit profile'),),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
                 Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: Text('share profile'),),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
                 Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: Icon(Icons.person_add_alt_1_rounded),),
                    ),
                  ),
                
              ],
             ),
               TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.grid_4x4_rounded,color: Colors.black,),
                ),
                Tab(
                  icon: Icon(Icons.video_collection_rounded,color: Colors.black,),
                ),
                Tab(
                  icon: Icon(Icons.person_pin_rounded,color: Colors.black,),
                )
               ],), 
               Expanded(child: TabBarView(children: [
                AccountPost(),
                AccountReel(),
                AccountTag()
               ]))
           
          ],
         
          
        ),
    
         
           
        
      ),
    );
  }
}