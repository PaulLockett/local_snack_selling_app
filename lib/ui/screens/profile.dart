import 'package:flutter/material.dart';
import 'package:shopping_app/ui/screens/cart.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cart()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.person, size: 200,),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 150,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add),
                    ),
                  ),
                ]
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your name'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your Dorm'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your number'
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
