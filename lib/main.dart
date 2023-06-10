import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: pazzal(),));
}

class pazzal extends StatefulWidget {
  const pazzal({Key? key}) : super(key: key);

  @override
  State<pazzal> createState() => _pazzalState();
}

class _pazzalState extends State<pazzal> {
  List l = [];
  int i = 0;
  int x = 0;
  int t = 0;
  int y = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (i = 0; i < 9; i++) {
      x = Random().nextInt(9);
      if (!l.contains(x)) {
        l.add(x);
      } else {
        i--;
      }
    }
    for (i = 0; i < l.length; i++) {
      if (l[i] == 0) {
        l[i] = " ";
      }
    }
    print(l);
  }

  Win() {
    
    if(l[0]=="1"&&l[1]=="2"&&l[2]=="3"&&l[3]=="4"&&l[4]=="5"&&l[5]=="6"&&l[6]=="7"&&l[7]=="8"&&l[8]=="9"&&l[9]==" ")
      {
        showDialog(context: context, builder:(context) {
          return AlertDialog(title: Text("You are win"),
          actions: [TextButton(onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return pazzal();
            },));
          }, child: Text("Ok"))],
          );
        }, );
      }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Pazzal Game"),),
      body: Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () {
                  if (l[1] == " ") {
                    t = l[0];
                    l[0] = l[1];
                    l[1] = t;
                    setState(() {});
                  }
                  else if (l[3] == " ") {
                    t = l[0];
                    l[0] = l[3];
                    l[3] = t;
                    setState(() {});
                  }
                  Win();
                  setState(() {});
                },
                    child: Container(child: Center(child: Text("${l[0]}",
                      style: TextStyle(fontSize: 50, color: Colors.black),)),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(border: Border(
                        top: BorderSide(width: 5, color: Colors.black),
                        bottom: BorderSide(width: 5, color: Colors.black),
                        left: BorderSide(width: 5, color: Colors.black),
                        right: BorderSide(width: 5, color: Colors.black),),
                          color: Colors.grey),)),
                InkWell(onTap: () {
                  if (l[0] == " ") {
                    t = l[1];
                    l[1] = l[0];
                    l[0] = t;
                    setState(() {});
                  }
                  else if (l[2] == " ") {
                    t = l[1];
                    l[1] = l[2];
                    l[2] = t;
                    setState(() {});
                    Win();
                  }
                  else if (l[4] == " ") {
                    t = l[1];
                    l[1] = l[4];
                    l[4] = t;
                    setState(() {});
                  }
                  setState(() {});
                  Win();
                },
                    child: Container(child: Center(child: Text("${l[1]}",
                      style: TextStyle(fontSize: 50, color: Colors.black),)),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(border: Border(
                        top: BorderSide(width: 5, color: Colors.black),
                        bottom: BorderSide(width: 5, color: Colors.black),
                        right: BorderSide(width: 5, color: Colors.black),),
                          color: Colors.grey),)),
                InkWell(onTap: () {
                  if (l[1] == " ") {
                    t = l[2];
                    l[2] = l[1];
                    l[1] = t;
                    setState(() {});

                  }
                  else if (l[5] == " ") {
                    t = l[2];
                    l[2] = l[5];
                    l[5] = t;
                    setState(() {});
                  }
                  setState(() {});
                  Win();
                },
                    child: Container(child: Center(child: Text("${l[2]}",
                      style: TextStyle(fontSize: 50, color: Colors.black),)),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(border: Border(
                        top: BorderSide(width: 5, color: Colors.black),
                        bottom: BorderSide(width: 5, color: Colors.black),
                        right: BorderSide(width: 5, color: Colors.black),),
                          color: Colors.grey),)),
              ],),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () {
                  if (l[0] == " ") {
                    t = l[3];
                    l[3] = l[0];
                    l[0] = t;
                    setState(() {});
                  }
                  else if (l[4] == " ") {
                    t = l[3];
                    l[3] = l[4];
                    l[4] = t;
                    setState(() {});
                  }
                  else if (l[6] == " ") {
                    t = l[3];
                    l[3] = l[6];
                    l[6] = t;
                    setState(() {});

                  }
                  Win();
                },
                    child: Container(child: Center(child: Text("${l[3]}",
                      style: TextStyle(fontSize: 50, color: Colors.black),)),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(border: Border(
                        left: BorderSide(width: 5, color: Colors.black),
                        right: BorderSide(width: 5, color: Colors.black),),
                          color: Colors.grey),)),
                InkWell(onTap: () {
                  if (l[1] == " ") {
                    t = l[4];
                    l[4] = l[1];
                    l[1] = t;
                    setState(() {});
                  }
                  else if (l[3] == " ") {
                    t = l[4];
                    l[4] = l[3];
                    l[3] = t;
                    setState(() {});
                  }
                  else if (l[5] == " ") {
                    t = l[4];
                    l[4] = l[5];
                    l[5] = t;
                    setState(() {});
                  }
                  else if (l[7] == " ") {
                    t = l[4];
                    l[4] = l[7];
                    l[7] = t;
                    setState(() {});
                  }

                  setState(() {});
                  Win();
                },
                    child: Container(child: Center(child: Text("${l[4]}",
                      style: TextStyle(fontSize: 50, color: Colors.black),)),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(border: Border(
                        right: BorderSide(width: 5, color: Colors.black),),
                          color: Colors.grey),)),
                InkWell(onTap: () {
                  if (l[2] == " ") {
                    t = l[5];
                    l[5] = l[2];
                    l[2] = t;
                    setState(() {});
                  }
                  else if (l[8] == " ") {
                    t = l[5];
                    l[5] = l[8];
                    l[8] = t;
                    setState(() {});
                  }
                  else if (l[4] == " ") {
                    t = l[5];
                    l[5] = l[4];
                    l[4] = t;
                    setState(() {});
                  }
                  setState(() {});
                  Win();
                },
                    child: Container(child: Center(child: Text("${l[5]}",
                      style: TextStyle(fontSize: 50, color: Colors.black),)),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(border: Border(
                        right: BorderSide(width: 5, color: Colors.black),),
                          color: Colors.grey),)),
              ],),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () {
                  if (l[3] == " ") {
                    t = l[6];
                    l[6] = l[3];
                    l[3] = t;
                    setState(() {});
                  }
                  else if (l[7] == " ") {
                    t = l[6];
                    l[6] = l[7];
                    l[7] = t;
                    setState(() {});
                  }

                  setState(() {});
                  Win();
                },
                    child: Container(child: Center(child: Text("${l[6]}",
                      style: TextStyle(fontSize: 50, color: Colors.black),)),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(border: Border(
                        top: BorderSide(width: 5, color: Colors.black),
                        bottom: BorderSide(width: 5, color: Colors.black),
                        right: BorderSide(width: 5, color: Colors.black),
                        left: BorderSide(width: 5, color: Colors.black),),
                          color: Colors.grey),)),
                InkWell(onTap: () {
                  if (l[4] == " ") {
                    t = l[7];
                    l[7] = l[4];
                    l[4] = t;
                    setState(() {});
                  }
                  else if (l[8] == " ") {
                    t = l[7];
                    l[7] = l[8];
                    l[8] = t;
                    setState(() {});
                  }
                  else if (l[6] == " ") {
                    t = l[7];
                    l[7] = l[6];
                    l[6] = t;
                    setState(() {});
                  }


                  setState(() {});
                  Win();
                },
                    child: Container(child: Center(child: Text("${l[7]}",
                      style: TextStyle(fontSize: 50, color: Colors.black),)),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(border: Border(
                        top: BorderSide(width: 5, color: Colors.black),
                        bottom: BorderSide(width: 5, color: Colors.black),
                        right: BorderSide(width: 5, color: Colors.black),),
                          color: Colors.grey),)),
                InkWell(onTap: () {
                  if (l[5] == " ") {
                    t = l[8];
                    l[8] = l[5];
                    l[5] = t;
                    setState(() {});
                  }
                  else if (l[7] == " ") {
                    t = l[8];
                    l[8] = l[7];
                    l[7] = t;
                    setState(() {});
                  }
                  setState(() {});
                  Win();
                },
                    child: Container(child: Center(child: Text("${l[8]}",
                      style: TextStyle(fontSize: 50, color: Colors.black),)),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(border: Border(
                        top: BorderSide(width: 5, color: Colors.black),
                        bottom: BorderSide(width: 5, color: Colors.black),
                        right: BorderSide(width: 5, color: Colors.black),),
                          color: Colors.grey),)),
              ],),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: () {
              l = List.filled(9, " ");
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) {
                return pazzal();
              },));
              setState(() {});
            },
                child: Text("Reset",
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),))
          ]),),
    );
  }
}
