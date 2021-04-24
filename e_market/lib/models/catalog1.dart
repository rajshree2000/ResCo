import 'package:flutter/material.dart';

class CatalogModel {
  static  List<Item> items = [
    Item(
      id: 1,
      image: "assets/phone.jpeg",
      image2:"assets/siphone.jpeg",
      name: "Refurbished iPhone 12 Pro Max",
      desc: "Storage: 128 GB, Color: Graphite.Condition: Device Device is in pristine condition with minimal signs of use.Screen is in excellent condition with no scratches."
    )
  ];

}

class Item {

  final int id;
  final String image;
  final String image2;
  final String name;
  final String desc;

  Item({this.id,this.image , this.image2 , this.name , this.desc});

  factory Item.fromMap(Map<String , dynamic> map){
    return  Item(
      id: map["id"],
      image: map["image"],
      image2: map["image2"],
      name: map["name"],
      desc: map["description"]
    );
  }

  toMap() => {
    "id": id,
    "image": image,
    "image2": image2,
    "name": name,
    "description": desc
  };

}