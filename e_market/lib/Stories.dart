import 'package:flutter/material.dart';



class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Wonderful Stories"),
        backgroundColor: Colors.brown,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0 , right: 50.0),
                    child: Image.asset("assets/p1.jpg"),
                  ),

                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("My father is a daily wage labour and he lost his job due to covid.I was unable to continue my studies because the school has been shut and we can afford even a single smartphone.But after knowing of this app , from one of my friend , I am now able to continue my studies" , style: TextStyle(fontStyle: FontStyle.italic , fontSize: 30),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0),
                    child: Text(("-Neha") , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 40),),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 8.0),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0 , right: 50.0),
                    child: Image.asset("assets/p2.jpg"),
                  ),

                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("I am single parent raised kid and my mother works household works in some houses to meet our ends.Due to lockdown I was unable to continue my studies and we could not afford any electronic product.One day the owner of a house in which my mother was working , he fill the form on behalf of me and I get a laptop to from this app.Now, I can catch up with my fellows in studies" , style: TextStyle(fontStyle: FontStyle.italic , fontSize: 30),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0),
                    child: Text(("-Govind") , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 40),),
                  ),
                ],
              ),
            ),
          )


        ],
      )
    );
  }
}
