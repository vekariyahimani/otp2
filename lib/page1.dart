import 'dart:math';

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController txtotp=TextEditingController();
  List otp=[];
  List oo=[];
  int i=0;
  String a='';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff15172B),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      "OTP Generator",
                      style: TextStyle(fontSize: 33, color: Color(0xffF6DB87)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff15172B),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          controller: txtotp,
                          cursorColor: Color(0xffF6DB87),
                          style: TextStyle(color: Color(0xffF6DB87)),
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffF6DB87))),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffF6DB87))),
                            hintText: ("Enter OTP Length"),
                            hintStyle: TextStyle(color: Colors.white30,),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: InkWell(
                      onTap: (){
                        a=txtotp.text;
                        int n=int.parse(a);
                        oo.clear();
                        otp.clear();
                        setState(() {
                          for(i=0;i<n;i++)
                          {
                            otp.add(0);
                          }
                          var rnd= Random();
                          for(i=0;i<n;i++)
                          {
                            int b=rnd.nextInt(9);
                            oo.add(b);
                          }
                        });
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: ([Color(0xffFFE8B8),Color(0xffF6DB87)]),

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Center(child: Text("Generate OTP",style: TextStyle(color: Colors.black,fontSize: 25),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: SingleChildScrollView(
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: ([Color(0xffFFE8B8),Color(0xffFFE8B8)]),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: otp.asMap().entries.map((e) => Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("${oo[e.key]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                            )).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(70),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          otp.clear();
                          oo.clear();
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: ([Color(0xffFFE8B8),Color(0xffF6DB87)]),

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Center(child: Text("Reset",style: TextStyle(color: Colors.black,fontSize: 25),)),

                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ));
  }
}
