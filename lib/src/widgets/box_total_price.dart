import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:sanoria_store/src/commons/colors.dart';

class BoxTotalPrice extends StatefulWidget {
  final String title;
  final double totalPrice;
  final String reference;

  const BoxTotalPrice({
    this.title = 'Total',
    @required this.totalPrice,
    @required this.reference,
  });

  @override
  _BoxTotalPriceState createState() => _BoxTotalPriceState();
}

class _BoxTotalPriceState extends State<BoxTotalPrice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.widget.title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  '\$${this.widget.totalPrice.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
          this.widget.reference == 'detailProduct'
              ? _detailProductButtom()
              : _shopButtom(),
        ],
      ),
    );
  }

  _shopButtom() {
    return RaisedButton(
      color: principalColor,
      shape: StadiumBorder(),
      child: Container(
        height: 45,
        child: Center(
          child: Text(
            "Comprar Ahora",
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
      onPressed: () {},
    );
  }

  _detailProductButtom() {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: principalColor,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 45,
            child: Center(
              child: Icon(
                LineAwesomeIcons.shopping_bag,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(
          "Agregar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
