import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sanoria_store/src/commons/colors.dart';
import 'package:sanoria_store/src/commons/lotties.dart';
import 'package:sanoria_store/src/commons/routes_images.dart';
import 'package:sanoria_store/src/models/payment_method_data.dart';

class PaymentMethod extends StatelessWidget {
  final PaymentMethodData paymentMethodData;

  const PaymentMethod({Key key, this.paymentMethodData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      height: 70,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: shadowBox,
        border: Border.all(
          color: paymentMethodData.isSelected
              ? Color(0xff393551)
              : Colors.transparent,
          width: 0.5,
        ),
      ),
      child: ListTile(
        leading: CachedNetworkImage(
          imageUrl: urlImage + this.paymentMethodData.imgUri,
          fit: BoxFit.contain,
          placeholder: (context, url) => Container(
            padding: EdgeInsets.all(30),
            child: Lottie.asset(lottieLoad),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        title: Text(
          paymentMethodData.name,
          style: TextStyle(
            color: paymentMethodData.isSelected
                ? Color(0xff393551)
                : Colors.black26,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.check,
            color: paymentMethodData.isSelected
                ? Color(0xff393551)
                : Colors.black26,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
