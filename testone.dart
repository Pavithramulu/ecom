import 'package:flutter/material.dart';
import 'package:shopmart/Amazon.dart';
import 'package:shopmart/per.dart';


class Testone extends StatefulWidget {
  const Testone({Key? key}) : super(key: key);

  @override
  State<Testone> createState() => _TestoneState();
}
class _TestoneState extends State<Testone> {

  int _index = 0 ;

  final pages=  [

    const Ecom(),
    const Ecom(),
    Pop(),
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
       items: const [
         BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: "",),
         BottomNavigationBarItem(icon: Icon(Icons.person_2,color:Colors.black,),label: ""),
        // BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.black,),label: ""),
       ],
       currentIndex: _index,
       onTap: _tap,
     ),
    );
  }
}
