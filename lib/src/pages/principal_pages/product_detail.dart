import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sanoria_store/src/commons/colors.dart';
import 'package:sanoria_store/src/commons/lotties.dart';
import 'package:sanoria_store/src/commons/routes_images.dart';
import 'package:sanoria_store/src/models/product_data.dart';
import 'package:sanoria_store/src/widgets/box_total_price.dart';
import 'package:sanoria_store/src/widgets/buttom_quantity.dart';

class ProductDetail extends StatefulWidget {
  final String heroTag;
  final ProductData productData;
  const ProductDetail({Key key, this.productData, @required this.heroTag})
      : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isFavorite;
  @override
  void initState() {
    super.initState();
    this.isFavorite = this.widget.productData.isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: principalColor,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: black06,
              borderRadius: BorderRadius.circular(18),
            ),
            child: IconButton(
              icon: Icon(
                this.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: principalColor,
              ),
              onPressed: () => _changeFavorite(this.isFavorite),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          color: blackCustom,
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: kToolbarHeight),
                    Text(
                      this.widget.productData.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Origen: Paute',
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      alignment: Alignment.topCenter,
                      child: Hero(
                        tag: this.widget.heroTag + this.widget.productData.name,
                        child: CachedNetworkImage(
                          imageUrl: urlImage + this.widget.productData.imageUrl,
                          placeholder: (context, url) => Container(
                            padding: EdgeInsets.all(30),
                            child: Lottie.asset(lottieLoad),
                          ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ButtomQuantity(
                                  backgroundColor: principalColor,
                                  icon: Icons.remove,
                                  padding: 5,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  this.widget.productData.weight,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(width: 15),
                                ButtomQuantity(
                                  backgroundColor: principalColor,
                                  icon: Icons.add,
                                  padding: 5,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Acerca del Producto',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                            ),
                            SizedBox(height: 10),
                            Expanded(
                              child: SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
                                child: Text(
                                  this.widget.productData.description != null
                                      ? this.widget.productData.description
                                      : this.widget.productData.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 16),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BoxTotalPrice(
              title: 'Precio Total',
              reference: 'detailProduct',
              totalPrice: this.widget.productData.price,
            ),
          ],
        ),
      ),
    );
  }

  _changeFavorite(bool favorite) {
    setState(() {
      if (favorite) {
        this.isFavorite = false;
      } else {
        this.isFavorite = true;
      }
    });
  }
}
