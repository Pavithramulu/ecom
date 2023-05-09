import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Navi.dart';
import 'testone.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  final keyy = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Colors.white30,
      body: SingleChildScrollView(
        child: Form(
          key: keyy,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/logo1.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.only(top: 15,bottom: 20),
                child: Text('Shopping Made Easy With Us',
                  style: GoogleFonts.alike(color: Colors.cyanAccent,fontSize: 25),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    color: Colors.grey.shade50,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child:
                  Row(
                    children:  [
                      Text("    Admin     ",
                        style: TextStyle(
                            color: Colors.black,fontSize: 20,
                            fontWeight: FontWeight.bold),),
                      VerticalDivider(thickness: 3,color: Colors.grey,),

                      Text("      User  ",
                        style: TextStyle(color: Colors.black,
                            fontSize: 20,fontWeight: FontWeight.bold),),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,right: 10,left: 10),
                child: Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    color: Colors.grey.shade50,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Text("shoppingwithus.com",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 320,
                          height: 70,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.grey),
                            // color: Colors.black12,
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                          ),
                          child: SizedBox(
                            width: 320,
                            height: 70,
                             child: TextFormField(

                               validator: (val)
                               {
                                 if (val == null || val.isEmpty)
                                   {
                                     return 'Please Enter Your Name';
                                }
                               },
                                decoration: const InputDecoration(
                                icon: Icon(Icons.person,color: Colors.black,),
                                labelText: 'Name',
                                  border: InputBorder.none,
                                hintText: 'Enter Your Name',
                                // border: OutlineInputBorder(),
                                // focusedBorder: ,
                                // enabledBorder: ,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 320,
                        height: 70,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.grey),
                            // color: Colors.black12,
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                          ),
                        // decoration: const BoxDecoration(
                        //   color: Colors.white70,
                        //   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        // ),
                        child: SizedBox(
                          width: double.infinity,
                          //  width: 320,
                          height: 60,
                          child: TextFormField(

                            // keyboardType: TextInputType.text,
                            validator: (val)
                            {
                              if (val == null || val.isEmpty)
                              {
                                return 'Please Enter Your Password';
                              }
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.mail,color: Colors.black,),
                              labelText: 'Email id',
                              border: InputBorder.none,
                              hintText: 'Enter Your Mail id',
                              // focusedBorder: ,
                              // enabledBorder: ,
                            ),
                          ),
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                              onPressed: (){
                            if(keyy.currentState!.validate())
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Navigation()),
                                );
                              }
                              },
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.cyanAccent.shade100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),),
                            child: const Text("login",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700),),
                          ),
                        ),
                         ],
                  ),
                ),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
