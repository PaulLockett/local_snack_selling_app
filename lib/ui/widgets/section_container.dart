import 'package:flutter/material.dart';

class SectionContainer extends StatefulWidget {
  final int id;
  SectionContainer({Key key,this.id}) : super(key: key);

  _SectionContainerState createState() => _SectionContainerState();
}

class _SectionContainerState extends State<SectionContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      child: RaisedButton(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          
        ),
        onPressed: (){},
        child: Text("@",
        style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}