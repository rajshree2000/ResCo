import 'dart:convert';

import 'package:e_market/lastScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'item_widget.dart';
import 'models/catalog1.dart';

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productData = decodeData["products"];
    CatalogModel.items = List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
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

      body: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
       ? GridView.builder(
        padding: EdgeInsets.all(16.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 8.0/9.0,
          ),
          itemBuilder: (context,index){
            final item = CatalogModel.items[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FinalScreen(item: item,)),
                );
              },
              child: Card(
                child: GridTile(
                    child: Image.asset(item.image , fit: BoxFit.cover,)
                ),
              ),
            );
          },
        itemCount: CatalogModel.items.length,
      ) : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

}
