import 'package:flutter/material.dart';
import 'package:shopping_app/global.dart';

class ProductContainer extends StatefulWidget {
  final int id;

  ProductContainer({Key key, this.id}) : super(key: key);
  @override
  _ProductContainerState createState() => _ProductContainerState();
}
//margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 13.0),
class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    //var _containerColor = adidasProducts[widget.id]['product_color'];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 1,
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
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
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: (){},
                          child: Text("Add to Cart",style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                  )
                ],
              ),
          ),
        ),
    );
  }
}