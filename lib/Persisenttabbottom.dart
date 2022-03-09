import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pdf/Forum.dart';
import 'package:pdf/Java_Course.dart';
import 'Books.dart';
import 'Courses.dart';
import 'Home.dart';
import 'Profile.dart';
import 'Wishlist.dart';

class PersistentTabs extends StatelessWidget{
  const PersistentTabs({this.currentTabIndex=0,  required this.screenWidgets});
  final int currentTabIndex;
  final List <Widget> screenWidgets;
  List <Widget> _buildOffStageWidgets(){
   return screenWidgets.map((w)=> Offstage(
     offstage: currentTabIndex!=screenWidgets.indexOf(w),
     child: Navigator(
       onGenerateRoute: (routeSettings){
         return MaterialPageRoute(builder: (_)=>w);
       },
     ),
   )
   )
       .toList();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:_buildOffStageWidgets(),
    );
  }

}
class PersistentTabsDemo extends StatefulWidget {

  @override
  _PersistentTabsDemoState createState() => _PersistentTabsDemoState();
}

class _PersistentTabsDemoState extends State<PersistentTabsDemo> {

  int currentTabIndex=0;
  @override
  void initState() {
    super.initState();
    currentTabIndex=0;
  }
  void setCurrentIndex(int val){
    setState(() {
      currentTabIndex=val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabs(
        currentTabIndex: currentTabIndex,
        screenWidgets: [Home(),Courses(),Books(),Wishlist(), Profile(),Forum()],
      ),
      bottomNavigationBar:  BottomNavigationBar(
    onTap: setCurrentIndex,
        currentIndex: currentTabIndex,
         backgroundColor: Colors.white,
    selectedItemColor: Colors.redAccent,
       unselectedItemColor: Colors.grey,
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label: 'Home'),
           BottomNavigationBarItem(icon: Icon(Icons.school),label: 'Courses'),
           BottomNavigationBarItem(icon: Icon(Icons.library_books),label: 'Books'),
           BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded),label: 'Wishlist'),
           BottomNavigationBarItem(icon:Icon(Icons.person),label: 'Profile'),
           BottomNavigationBarItem(icon: Icon(Icons.announcement),label: ('Forum')),
         ],
      ),
    );
  }
  }


