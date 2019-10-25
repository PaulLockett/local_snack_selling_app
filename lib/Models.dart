import 'package:flutter/widgets.dart';

class Product{
  String name;
  var price;
  Color color;
  int amountSelected = 0;
  int amountAvaliable;
  Product({this.name,this.price,this.color,this.amountAvaliable});
  
  factory Product.fromMap(Map data){
    return Product(
      color: Color(data['color']) ?? Color(0xFFFFFFFF),
      name: data['name'] ?? 'Unknown Snack',
      price: data['price'] ?? '0.00',
      amountAvaliable: data['amountAvaliable'],
      );
  }
}