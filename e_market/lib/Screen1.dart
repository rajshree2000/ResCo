import 'package:e_market/lastScreen.dart';
import 'package:flutter/material.dart';

import 'item_widget.dart';
import 'models/catalog.dart';

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {

  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(
      count,
          (int index) => Card(
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: (){},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                AspectRatio(
                 aspectRatio: 18.0 / 11.0,
                 child: Image.asset('assets/p1.jpg'),
              ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Title'),
                    SizedBox(height: 8.0),
                    Text('Secondary Text'),
                  ],
                ),
              ),
          ],
        ),
            ),
      ),
    );
    return cards;
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Products'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),


      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0/9.0,
        //children: _buildGridCards(10),
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FinalScreen()),
              );
            },
            child: Card(
              shadowColor: Colors.black38,
              //clipBehavior: Clip.antiAlias,
              child: Image.asset("assets/phone.jpeg" , fit: BoxFit.cover,),
            ),
          ),
          Card(
            shadowColor: Colors.black38,
            //clipBehavior: Clip.antiAlias,
            child: Image.asset("assets/tablet.jpeg" , fit: BoxFit.cover,),
          ),
          Card(
            shadowColor: Colors.black38,
            //clipBehavior: Clip.antiAlias,
            child: Image.asset("assets/laptops.jpg" , fit: BoxFit.cover,),
          ),
          Card(
            shadowColor: Colors.black38,
            //clipBehavior: Clip.antiAlias,
            child: Image.asset("assets/fitbands.jpeg" , fit: BoxFit.cover,),
          ),
          Card(
            shadowColor: Colors.black38,
            //clipBehavior: Clip.antiAlias,
            child: Image.asset("assets/head.jpeg" , fit: BoxFit.cover,),
          ),
          Card(
            shadowColor: Colors.black38,
            //clipBehavior: Clip.antiAlias,
            child: Image.asset("assets/cam.jpeg" , fit: BoxFit.cover,),
          ),
          Card(
            shadowColor: Colors.black38,
            //clipBehavior: Clip.antiAlias,
            child: Image.asset("assets/ref.jpeg" , fit: BoxFit.cover,),
          ),
          Card(
            shadowColor: Colors.black38,
            //clipBehavior: Clip.antiAlias,
            child: Image.asset("assets/st.jpeg" , fit: BoxFit.cover,),
          ),
        ],

      ),
    );
  }
}
