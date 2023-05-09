import 'package:carousel_slider/carousel_slider.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:flutter/material.dart';


import 'model.dart';

class Pop extends StatelessWidget{
   Pop({Key? key}) : super(key: key);

   // void main() {
   //   int number;
   //   number = 0;
   // }

  get child => null;

 // set index(value) => _index.value = value;
 // get index => _index.value;
 // final _index = 0.obs;

  String? selectedValue;
  List<String> items = [
    'Qty1',
    'Qty2',
    'Qty2',
    'Qty4',
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
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
       body: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               width: double.infinity,
               color: Colors.white,
               child: Row(
                 children: const [
                   Padding(
                     padding: EdgeInsets.only(top: 5,bottom: 5,right: 5,left: 5),
                     child: Padding(
                       padding: EdgeInsets.only(left: 5,bottom: 2,top: 2),
                       child: Text("Visit the Boat Store",
                       style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                     ),
                   ),
                     Padding(
                       padding: EdgeInsets.only(top: 5,bottom: 5,right:0,left: 80),
                       child: Icon(
                         Icons.star,size: 20,
                         color: Colors.amber,
                       ),
                     ),
                     Icon(
                     Icons.star,size: 20,
                     color: Colors.amber,
                   ),
                     Icon(
                     Icons.star,size: 20,
                     color: Colors.amber,
                   ),
                     Icon(
                     Icons.star,size: 20,
                     color: Colors.amber,
                   ),
                     Icon(
                     Icons.star,size: 20,
                     color: Colors.amber,
                   ),
                   Padding(
                     padding: EdgeInsets.only(top: 5,bottom: 5),
                     child: Text("34.421",style: TextStyle(color: Colors.blue),),
                   ),
                   //1st Box
                 ],
               ),
             ),// 1st BOX
             Container(
               width: double.infinity,
               height: 70,
               color: Colors.white,
               child: Column(
                 children: const [
                   Padding(
                     padding: EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
                     child: Text(
                       "boAt Air-dopes 141 Bluetooth Truly Wireless in Ear Earbuds with mic,    42H Playtime,   Best Model,IPX4 Water Resistance (Bold Black)",
                       maxLines: 3,
                       overflow: TextOverflow.ellipsis,
                     ),
                   ),////1st container
                 ],
               ),
             ),   //2nd BOX
             Stack(
               alignment: AlignmentDirectional.center,
               fit: StackFit.loose,
               children: <Widget>[
                  Container(
                    width: double.infinity,
                   color: Colors.orange,
                   height: 350,

                   child: CarouselSlider.builder(
                       options: CarouselOptions(
                         height: 400,
                         viewportFraction: 1,
                         initialPage: 0,
                         enableInfiniteScroll: true,
                         autoPlay: true,
                         autoPlayInterval: const Duration(seconds: 2),
                         enlargeCenterPage: false,
                         scrollDirection: Axis.horizontal,
                       ),
                       itemCount: headset.length,
                      // itemCount: headset1.length,
                       itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                       {
                         return
                           Container(
                               height:150,
                               width: 500,
                               color: Colors.white,
                               child:  Image(image: AssetImage(headset[itemIndex].image), fit: BoxFit.fill,));
                       }
                   ),
                 ),
                 Positioned(
                   top: 5,left: 5,
                   child: Row(
                     children: const [
                     CircleAvatar(
                       backgroundColor: Colors.red,
                       maxRadius: 20,
                       foregroundImage: NetworkImage("enterImageUrl"),
                       child: Padding(
                         padding: EdgeInsets.only(left: 5,bottom: 2,top: 2),
                         child: Text("20%",style: TextStyle(
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                              fontSize: 15,
                             ),),
                       ),
                     ),
                     ],
                   ),
                 ),
                 Positioned(
                   top: 5,right: 5,
                   child: Row(
                   children: const [
                     Icon(Icons.share_outlined,color: Colors.black,),
                   ],
                     ),
                 ),
                 Positioned(
                   bottom: 5,left:5,
                   child: Row(
                     children: const [
                       Icon(Icons.favorite,color: Colors.red,),
                     ],
                   ),
                 ),
                 Positioned(
                   bottom: 5,right: 5,
                   child: Row(
                     children: const [
                       Icon(Icons.shopping_cart,color: Colors.black,),
                     ],
                   ),
                 ),
               ],
             ),     /////3rd BOX
             Padding(
               padding: const EdgeInsets.only(top: 5,bottom:0),
               child: Container(
                 width: double.infinity,
                 color: Colors.white,
                 child: const Padding(
                   padding: EdgeInsets.only(top: 0,bottom: 0,right: 10,left: 10),
                   child: Text("Brand: BoAt",
                     style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                 ),
               ),
             ), //4th box
             Padding(
               padding: const EdgeInsets.only(top: 0),
               child: SizedBox(
                 height: 120,
                 width: double.infinity,
                 child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount:
                     headset1.length,
                     itemBuilder: (BuildContext context,index)
                     {
                       return Container(
                         height: 50,
                         width: 110,
                         color: Colors.white,
                         child: Column(
                           children:  [
                             Container(
                                 height: 100,
                               width: 180,
                               color: Colors.white,

                                 child: Image(image: AssetImage(headset1[index].image),)
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 5),
                               child: Text(headset1[index].text,
                                 style: const TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                             ),


                           ],
                         ),
                       );
                     }
                 ),

               ),
             ),
             Padding(
               padding: const EdgeInsets.only(bottom: 2,top: 5),
               child: Container(
                 width: double.infinity,
                 height: 150,
                 color: Colors.white,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       children: [
                         Row(
                           children: const [
                             Padding(
                               padding: EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
                               child: Text('-20%',
                                 style:
                                 TextStyle(color: Colors.red,
                                     fontSize: 25,), ),
                             ),
                           ],
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10,bottom: 2,top: 2),
                           child: Row(
                             children: const [
                               Text('\u{20B9}',
                                 style:
                                 TextStyle(color: Colors.black,
                                     fontSize: 15,), ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left:2,bottom: 2,top: 2),
                           child: Row(
                             children: const [
                               Text('1300',
                                 style:
                                 TextStyle(
                                     color: Colors.black,
                                     fontSize: 25,), ),
                             ],
                           ),
                         ),
                       ],
                     ),
                     Row(
                       children: [
                         Row(
                           children: const [
                             Padding(
                               padding: EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
                               child: Text('M.R.P.:',
                                 style:
                                 TextStyle(color: Colors.black,
                                   fontSize: 15,), ),
                             ),
                           ],
                         ),
                         Row(
                           children: const [
                             Text('1500',
                               style:
                               TextStyle(color: Colors.black,decoration: TextDecoration.lineThrough,
                                 fontSize: 15,), ),
                           ],
                         ),
                       ],
                     ),
                     Row(
                       children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10),
                                child: Container(
                                 width: 30,
                                 height: 20,
                                 decoration:  const BoxDecoration(
                                   color: Colors.black,
                                   image: DecorationImage(
                                     image: AssetImage("asset/alogo.jpg"),
                                     fit: BoxFit.fill,
                                   ),
                                 ),
                             ),
                              ),
                         Container(
                           width: 35,
                             height: 20,
                             color: Colors.black,
                             child: const Text('Fulfilled',style: TextStyle(color: Colors.white),)),

                       ],
                     ),
                     const Padding(
                       padding: EdgeInsets.only(top: 5,bottom: 5,left: 18),

                     ),
                     const Padding(
                       padding: EdgeInsets.only(top: 5,bottom: 5,right: 5,left: 5),
                       child: Text('Inclusive all Taxes',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold) ,),
                     ),
                   ],
                 ),
               ),
             ),
             Container(
               width: double.infinity,
               height:350,
               color: Colors.white,
               child: Column(
                 children: [
                   const Padding(
                     padding:  EdgeInsets.only(top: 5,right: 5,left: 5),
                     child: Text("FREE delivvery Wednesday, 22 february. Details",
                       style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                   ),
                   const Padding(
                     padding: EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 18),
                     child: Text("Offers : Save Extra with Buy more Save more,No Cost EmI, Bank Offers, Caseback Up to rs.100",
                       style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                   ),
                   const Padding(
                     padding: EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 300),
                     child: Text("In stock :",
                       style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 300),
                     child: Container(
                         width: double.infinity,
                       height: 35,
                       decoration: BoxDecoration(
                         border: Border.all(width: 2, color: Colors.grey.shade50),
                         borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                         color: Colors.grey.shade200,
                       ),

                       child: Padding(
                         padding:  const EdgeInsets.only(left: 5,top: 5,bottom: 5),
                         child:  DropdownButtonHideUnderline(
                         child: DropdownButton2(
                         hint: const Text(
                         'Qty',
                           style: TextStyle(
                           fontSize: 15,fontWeight: FontWeight.bold,
                           color: Colors.black,
                           ),
                           ),
                           items: items
                              .map((item) =>
                          DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                          item,
                          style: const TextStyle(
                          fontSize: 14,
                          ),
                          ),
                          )).toList(),
                          value: selectedValue,
                          onChanged: (value) {
                         //  setState(() {
                         //  selectedValue = value as String;
                         // });
                          },
                          buttonHeight: 40,
                          buttonWidth: 70,
                          itemHeight: 40,
                         // itemWidth: 140,
                          ),
                          ),
                          ),
                     ),
                   ),//drop down button
                   SizedBox(
                     width:350,
                     height: 50,
                     child: Padding(
                       padding: const EdgeInsets.only(left: 5,top: 5,bottom: 5),
                       child: FloatingActionButton.extended(
                         label: const Text('Add to Card', style: TextStyle(color: Colors.black,fontSize: 15,),),
                         // <-- Text
                         backgroundColor: Colors.amberAccent,
                         // icon: const Icon( // <-- Icon
                         //   Icons.add,
                         //   size: 24.0,
                         //   color: Colors.black,
                         // ),
                         onPressed: () {},
                       ),
                     ),
                   ),
                   SizedBox(
                     width: 360,
                     height: 50,
                     child: Padding(
                       padding: const EdgeInsets.only(left: 10,top: 10),
                       child: FloatingActionButton.extended(
                         label: const Text('Buy Now   ', style: TextStyle(color: Colors.black,fontSize: 15,),),
                         // <-- Text
                         backgroundColor: Colors.orange,
                         // icon: const Icon( // <-- Icon
                         //   Icons.add,
                         //   size: 24.0,
                         //   color: Colors.black,
                         // ),
                         onPressed: () {},
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 15),
                     child: Row(
                       children:  const [
                         Icon(Icons.lock,color: Colors.grey,size: 15,),
                         Text('Secure Transaction',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.blueGrey),),

                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
                     child: Row(
                       children:  const [
                         Padding(
                           padding: EdgeInsets.only(left: 5),
                           child: Text('Sold by Green Store and Fullfilled by Amazon. ',style: TextStyle(color: Colors.blue),),
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
                     child: Row(
                       children:  const [
                         Padding(
                           padding: EdgeInsets.only(left: 5),
                           child: Text('Add to Wish List ',style: TextStyle(color: Colors.blueGrey),),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
       ),
    );
}
}

