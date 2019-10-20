import 'package:flutter/material.dart';
import 'package:shopping_app/global.dart';

import 'package:shopping_app/ui/screens/cart.dart';
import 'package:shopping_app/ui/screens/profile.dart';
import 'package:shopping_app/ui/widgets/product_container.dart';
//TODO(): implement quick search buttions
//import 'package:shopping_app/ui/widgets/section_container.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text("Snacks"),
          leading: IconButton(
            icon: Icon(
              Icons.person,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              },
            ),
          ],
        ),
        body: Container(
          child:Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: adidasProducts.length,
                  itemBuilder: (ctx, i) {
                    return ProductContainer(id: i);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}