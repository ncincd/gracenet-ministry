import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gracenet_ministry/pages/Donation.dart';
import 'package:gracenet_ministry/pages/Home.dart';
import 'package:gracenet_ministry/pages/Sermon.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [Home(),Sermon(),Donation()];

  int _selectedIndex = 0;
  void _onPageChanged(int index){
    setState(() {
      _selectedIndex = index;
    });

  }
  void _onItemTapped(int selectedIndex){
    _pageController.jumpToPage(selectedIndex);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
         controller: _pageController,
         children: _screens,
         onPageChanged:_onPageChanged,
         physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: _selectedIndex ==0 ? Colors.blue: Colors.black,
          ),
            title: Text("Home",
            style: TextStyle(color: _selectedIndex ==0 ? Colors.blue: Colors.black),),
        ),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_stories,
                color: _selectedIndex ==1 ? Colors.blue: Colors.black,),
            title: Text("Sermon",
              style: TextStyle(color: _selectedIndex ==1 ? Colors.blue: Colors.black),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.aspect_ratio,
              color: _selectedIndex ==2 ? Colors.blue: Colors.black,),
            title: Text("Donation",
              style: TextStyle(color: _selectedIndex ==2 ? Colors.blue: Colors.black), ),
          ),
      ],
      ),
    );
  }
}
