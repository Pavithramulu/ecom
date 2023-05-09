import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Colors.cyanAccent.shade100,
        title: Row(
          children:  [
            Container(
              height: 40,
              width:320,
              color: Colors.white,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Align(
                    widthFactor: 2,
                    heightFactor: 5,
                    child: Icon(Icons.search,color: Colors.black,),
                  ),
                  suffixIcon: Align(
                    widthFactor: 2,
                    heightFactor: 5,
                    child: Icon( Icons.center_focus_strong, ),
                  ),
                  labelText: "Search Amazon.in",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,color: Colors.black12,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.mic_none,color: Colors.black,),
            )
          ],
        ),
        // title:
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 2,bottom: 2,right: 300,left:3),
           child: Text("My Oders",
               style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
           ),
           Container(
            color: Colors.blue,
             child: const Material(
               child: ListTile( leading: Icon(Icons.task,color: Colors.green,),
                 title:
                 Text('Recent Orders'),
                 trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),

              ),
             ),
          ),
           Container(
            color: Colors.blue,
             child: const Material(
               child: ListTile( leading: Icon(Icons.task,color: Colors.pinkAccent,),
                 title:
                 Text('Delivery Details'),
                 trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),

               ),
             ),
           ),//text2
           Container(
             color: Colors.blue,
             child: const Material(
               child: ListTile( leading: Icon(Icons.task,color: Colors.orange,),
                 title:
                Text('Favorite Items'),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
            ),
          ),//text3
          Container(
            color: Colors.blue,
            child: const Material(
              child: ListTile( leading: Icon(Icons.task,color: Colors.blueAccent,),
                title:
                Text('Oder History'),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
            ),
          ),//text4
          Container(
            color: Colors.blue,
            child: const Material(
              child: ListTile( leading: Icon(Icons.task,color: Colors.purple,),
                title:
                Text('Your Earings'),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 2,bottom: 2,right: 300,left:3),
            child: Text("GetHepl?",
              style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 25,right: 25,),
          //   child: Container(
          //     height: 290,
          //     decoration: const BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.all(Radius.circular(15.0)),
          //     ),
          //     child: SizedBox(
          //       height: 200,
          //       width: double.infinity,
          //       child: Padding(
          //         padding: const EdgeInsets.all(2.0),
          //         child: Image.asset("asset/w1.png"),
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              width: double.infinity,
              height: 600,
                 decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/w2.png"),
                  fit: BoxFit.fill,
                ),


              ),

            ),
          ),//text5
        ],
       ),
      );
  }
}

