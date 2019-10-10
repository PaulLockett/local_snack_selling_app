import 'package:flutter/material.dart';
import 'package:shopping_app/global.dart';

class ProductContainer extends StatefulWidget {
  final int id;
  double sliderValue = 0;

  ProductContainer({Key key, this.id}) : super(key: key);
  @override
  _ProductContainerState createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override

  void _changer(newRating){
      setState(() => widget.sliderValue = newRating);
  }
  @override
  Widget build(BuildContext context) {
    var _containerColor = adidasProducts[widget.id]['product_color'];
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 13.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35.0),
        color: _containerColor,
      ),
      child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: Image.network(
                  adidasProducts[widget.id]["product_image"],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "${adidasProducts[widget.id]["product_name"]}",
                            style:
                                TextStyle(color: Colors.white, fontSize: 21),
                          ),
                          Text(
                            "${adidasProducts[widget.id]["product_price"]}",
                            style: TextStyle(color: Colors.white, fontSize: 21),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              top: 150.0, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Slider(
                      activeColor: Colors.indigoAccent,
                      min: 0.0,
                      max: 15.0,
                      onChanged: (newRating) {
                        _changer(newRating);
                      },
                      value: widget.sliderValue,
                    ),
                  ),

                  // This is the part that displays the value of the slider.
                  Container(
                    width: 50.0,
                    alignment: Alignment.center,
                    child: Text('${widget.sliderValue.toInt()}',
                        style: Theme.of(context).textTheme.display1),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}