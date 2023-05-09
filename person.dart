import 'package:flutter/material.dart';
import 'package:tes/Screens/testone.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Colors.cyanAccent.shade100,
        title: Row(
          children:  [
            Container(
              height: 40,
              width: 400,
              color: Colors.white,
              child: TextFormField(
                decoration:  const InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 50),
                    child: Align(
                      widthFactor: 2,
                      heightFactor: 5,
                      child: Padding(
                        padding: EdgeInsets.only(right: 50,),
                        child: Text("your faverate product.in",style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  ),
                  suffixIcon: Align(
                    widthFactor: 2,
                    heightFactor: 5,
                    child: Icon( Icons.notification_add,color: Colors.amber,),
                  ),
                  // labelText: "Search Amazon.in",
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     width: 1,color: Colors.black12,
                  //   ),
                  // ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search,color: Colors.black,),
            )
          ],
        ),
        // title:
      ),


    );
  }
}
