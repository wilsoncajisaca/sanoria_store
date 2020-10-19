import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sanoria_store/src/commons/colors.dart';
import 'package:sanoria_store/src/commons/style_text.dart';
import 'package:sanoria_store/src/models/product_data.dart';
import 'package:sanoria_store/src/widgets/product_card.dart';
import 'package:sanoria_store/src/widgets/product_card_offer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      physics: BouncingScrollPhysics(),
      enablePullDown: true,
      onRefresh: _updateHome,
      header: WaterDropHeader(
        complete: Icon(
          Icons.check,
          color: Colors.blue[100],
        ),
        waterDropColor: Colors.blue[400],
      ),
      controller: _refreshController,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              productOfferList.length > 0 ? _OfferProducts() : Container(),
              SizedBox(height: 10),
              _MoreSales(),
              SizedBox(height: 10),
              _Favorites(),
            ],
          ),
        ),
      ),
    );
  }

  void _updateHome() async {
    setState(() {});
    await Future.delayed(Duration(milliseconds: 1000));
    _refreshController.refreshCompleted();
  }
}

class _OfferProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _TitleForHome(
            title: 'Descubrir Ofertas',
            onPressed: () {},
          ),
          SizedBox(height: 5),
          Container(
            height: 120,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: productOfferList.length,
              itemBuilder: (context, index) => ProductCardOffer(
                productData: productOfferList[index],
                heroTag: 'offer_list_',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MoreSales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _TitleForHome(
            title: 'Mas Vendidos',
            onPressed: () {},
          ),
          SizedBox(height: 5),
          Container(
            height: 195,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: productMoreSaleList.length,
              itemBuilder: (context, index) => ProductCard(
                productData: productMoreSaleList[index],
                heroTag: 'more_sale_list_',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _TitleForHome(
            title: 'Favoritos',
            onPressed: () {},
          ),
          SizedBox(height: 5),
          Container(
            height: 195,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: productFavoriteList.length,
              itemBuilder: (context, index) => ProductCard(
                productData: productFavoriteList[index],
                heroTag: 'favorite_list_',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TitleForHome extends StatelessWidget {
  final String title;
  final Function onPressed;

  const _TitleForHome({
    this.title,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            this.title,
            style: styleTextSubTitle,
          ),
        ),
        GestureDetector(
          onTap: this.onPressed,
          child: Text(
            "Ver Todo",
            style: TextStyle(
              fontSize: 13,
              color: principalColor,
              fontWeight: FontWeight.w300,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: principalColor,
        )
      ],
    );
  }
}
