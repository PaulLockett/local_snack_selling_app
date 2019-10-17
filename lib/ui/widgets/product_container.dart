import 'package:flutter/material.dart';
import 'package:shopping_app/global.dart';

class ProductContainer extends StatefulWidget {
  final int id;

  ProductContainer({Key key, this.id}) : super(key: key);
  @override
  _ProductContainerState createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    var _containerColor = adidasProducts[widget.id]['product_color'];
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 13.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35.0),
        //border: Border.all(),
        color: _containerColor,
        gradient: LinearGradient(
          colors: [Colors.amber, _containerColor],
          begin: Alignment.centerRight,
          end:  Alignment.centerLeft,
        ),
        boxShadow: [
          BoxShadow(
           offset: Offset(5,5),
           blurRadius: 5,
          ),
        ]
      ),
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Image.asset('assets/Doritos_Nacho_cheese.png'),
           Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("${adidasProducts[widget.id]["product_name"]}",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                  ),
                  Text("${adidasProducts[widget.id]["product_name"]}",
                    style: TextStyle(color: Colors.black38, fontSize: 12),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
           ),
           Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: <Widget>[
                 Text("\$2.00",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                 ),
                 Expanded(child: SizedBox()),
                 RaisedButton(
                   color: Colors.blue,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20),
                   ),
                   onPressed: (){},
                    child: Text("Add to Cart"),
                 )
               ],
             ),
           )
         ],
       )
       //Stack(
      //     children: <Widget>[
      //       Align(
      //         alignment: Alignment.centerLeft,
      //         child: Image.asset('assets/Doritos_Nacho_cheese.png'),
      //       ),
      //       Align(
      //         alignment: Alignment.topCenter,
      //         child: Padding(
      //           padding: const EdgeInsets.only(left: 30),
      //           child: Text(
      //               "${adidasProducts[widget.id]["product_name"]}",
      //               style: TextStyle(color: Colors.white, fontSize: 21),
      //               textAlign: TextAlign.right,
      //           ),
      //         ),
      //       ),
            // Align(
            //   alignment: Alignment.topLeft,
            //   child: Padding(
            //     padding: const EdgeInsets.all(9.0),
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: <Widget>[
            //         Expanded(
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: <Widget>[
            //               Text(
            //                 "${adidasProducts[widget.id]["product_name"]}",
            //                 style:
            //                     TextStyle(color: Colors.white, fontSize: 21),
            //               ),
            //               Text(
            //                 "${adidasProducts[widget.id]["product_price"]}",
            //                 style: TextStyle(color: Colors.white, fontSize: 21),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
        //   ],
        // ),
    );
  }
}