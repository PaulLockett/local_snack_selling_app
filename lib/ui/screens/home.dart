import 'package:flutter/material.dart';
import 'package:shopping_app/global.dart';

import 'package:shopping_app/ui/screens/cart.dart';
import 'package:shopping_app/ui/screens/profile.dart';
import 'package:shopping_app/ui/widgets/product_container.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
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
                        Text("Snacks"),
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
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: adidasProducts.length,
                      itemBuilder: (ctx, i) {
                        return ProductContainer(id: i);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
