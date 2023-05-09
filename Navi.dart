import 'package:flutter/material.dart';

import 'Amazon.dart';
import 'Ssametwo.dart';


import 'loginpage.dart';




class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}
class _NavigationState extends State<Navigation> {

  int _index = 0 ;

  final pages=  [

    Ecom(),
    Todo(),

  ];

  void _tap(index)
  {
    setState(() {
      _index = index ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          // BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined,color: Colors.white,size: 35,),label: "login",),
          BottomNavigationBarItem(icon: Icon(Icons.home,color:Colors.grey.shade900,size: 35,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,size: 35,),label: "Profile"),
        ],
        currentIndex: _index,
        onTap: _tap,
      ),
    );
  }
}
