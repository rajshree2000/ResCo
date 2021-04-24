import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'models/catalog1.dart';

class FinalScreen extends StatefulWidget {

  final Item item;

  const FinalScreen({Key key, @required this.item})
      : assert (item!=null),
        super(key: key);


  @override
  _FinalScreenState createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                Center(
                    child: Image.asset(widget.item.image2)
                ),

                SizedBox(height: 16.0,),

                Table(
                    border: TableBorder.all(),
                    children: [
                      TableRow(children :[
                        Text('Name' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
                        Text('Description' , style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      ]),
                      TableRow(children :[
                        Text(widget.item.name, style: TextStyle(fontSize: 25),),
                        Text(widget.item.desc , style: TextStyle(fontSize: 20),),
                      ]),
                    ]
                ),

                SizedBox(height: 200.0,),
                ElevatedButton(
                    onPressed: (){

                    },
                    child: Text("Fill The Form")
                )

              ],
            ),
          ),
        ],
      )
    );
  }
}
