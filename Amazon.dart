import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopmart/model.dart';
import 'package:shopmart/per.dart';


class Ecom extends StatelessWidget{
  const Ecom({Key? key}) : super(key: key);

  get child => null;
 @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.grey.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Colors.cyanAccent.shade100,
        title: Row(
          children:  [
            Container(
                height: 40,
                width: 320,
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
          body:
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                    height: 130,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: lists.length,
                        itemBuilder: (BuildContext context,index)
                        {
                          return Container(
                            height: 60,
                            width: 130,
                            color: Colors.white,
                            child: Column(
                              children:  [
                                SizedBox(
                                    height: 90,
                                    child: Image(image: AssetImage(lists[index].image),)),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(lists[index].text,
                                    style: const TextStyle(color: Colors.black,
                                        fontSize: 13,fontWeight: FontWeight.bold),),
                                ),
                                ],
                            ),
                          );
                        }
                    ),
                ),
                  ),
                const Padding(
                  padding: EdgeInsets.only(top: 8,left: 8),
                  child: Text("Deals Of The Day",
                    style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                ),
                //List View1
                  Padding(
                    padding: const EdgeInsets.only(top: 10,),
                    child: Container(
                      color: Colors.white,
                     height: 250,
                      width: double.infinity,
                     child: CarouselSlider.builder(
                       options: CarouselOptions(
                         height: 400,
                         aspectRatio: 16/9,
                         viewportFraction: 0.9,
                         initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration: const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: false,
                         // enlargeFactor: .,
                         //onPageChanged: callbackFunction,
                          scrollDirection: Axis.horizontal,
                        ),
                         itemCount: abc.length,
                          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                         {
                            return
                              Container(
                                  height:150,
                                  width: 500,
                                  color: Colors.white,
                                  child:  Image(image: AssetImage(abc[itemIndex].image),));
                         }
                     ),
                    ),
                  ),
                    const Padding(
                  padding: EdgeInsets.only(top: 8,left: 8),
                  child: Text("Lowest Price",
                    style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                ), //CarouselSlider.builder
                  Padding(
                    padding:  const EdgeInsets.only(top: 10,bottom: 10),
                    child: Container(
                    height: 200,
                      color: Colors.white,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: look.length,
                        itemBuilder: (BuildContext context,index)
                        {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Pop()),);

                              },
                              child: Container(
                                height: 150,
                                width: 150,
                                color: Colors.black12,

                                child: Column(
                                  children:  [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Image(image: AssetImage(look[index].image),)
                                    ),
                                    Text(look[index].text,
                                      style: const TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                                    ],
                                ),
                              ),
                            ),
                          );
                        }
                    ),
                ),
                  ),
                const Padding(
                  padding: EdgeInsets.only(top: 8,left: 8,),
                  child: Text("Women Choice",
                    style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                ),//List View
                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Container(
                     color: Colors.white,
                    height: 450,
                     child: GridView.builder(
                         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            // maxCrossAxisExtent: 200,
                             childAspectRatio: 1.7/ 2,
                            //  crossAxisSpacing: 20,
                            // mainAxisSpacing: 20
                         ),
                        itemCount: like.length,
                         itemBuilder: (BuildContext ctx, index) {
                           return Padding(
                             padding: const EdgeInsets.only(top: 5),
                             child: Column(
                               children: [
                                 Container(
                                 height: 180,
                               alignment: Alignment.center,
                               decoration: BoxDecoration(
                                   color: Colors.white,
                                   image:  DecorationImage(image: AssetImage(like[index].image),)
                                   // fit: BoxFit.fill,
                                   ),
                                   // borderRadius: BorderRadius.circular(10)),
                               ),
                                  Text(like[index].text,
                                   style: const TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                               ],
                             ),
                           );
                         }),
                   ),
                 ),
                //GridView.builder
              ],
    ),
          ),
    );
  }
}
