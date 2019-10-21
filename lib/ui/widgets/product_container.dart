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
  var _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 1,
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              //padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Colors.white, products[widget.id]["product_color"]]
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                      child: Container(
                        transform: Matrix4.rotationZ(0.5),
                        //alignment: Alignment.center,
                        child: Image.asset(products[widget.id]["product_image"])
                        ),
                      ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("${products[widget.id]["product_name"]}",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.clip,
                          ),
                          Text("${products[widget.id]["product_name"]}",
                            style: TextStyle(color: Colors.black38, fontSize: 12),
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top:15.0, right:15.0, bottom:15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text("\$${products[widget.id]["product_price"]}",
                          style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                          Expanded(child: SizedBox()),
                          RaisedButton(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            onPressed: (){},
                            child: Text("Add to Cart",style: TextStyle(color: Colors.white),),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
          ),
        ),
    );
  }
}