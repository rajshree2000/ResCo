import 'package:flutter/material.dart';

class FinalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Smartphone"),
      ),
      body: Card(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(child: Image.asset("assets/ans.webp")),
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
                    Text('Refurbished iPhone 12 Pro Max', style: TextStyle(fontSize: 25),),
                    Text('Storage: 128 GB, Color: Graphite.Condition: Device Device is in pristine condition with minimal signs of use.Screen is in excellent condition with no scratches.' , style: TextStyle(fontSize: 20),),
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
    );
  }
}
