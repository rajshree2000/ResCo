import 'package:e_market/models/catalog1.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatefulWidget {

  final Item item;

  const ItemWidget({Key key, @required this.item})
      : assert (item!=null),
        super(key: key);

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      // shadowColor: Colors.black38,
      //clipBehavior: Clip.antiAlias,
      child: Image.asset(widget.item.image, fit: BoxFit.cover,),
    );
  }
}
