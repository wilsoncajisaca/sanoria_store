import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:sanoria_store/src/commons/colors.dart';
import 'package:sanoria_store/src/commons/style_text.dart';
import 'package:sanoria_store/src/models/history_data.dart';
import 'package:sanoria_store/src/models/shoppingProduct.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: principalColor,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text(
          'Tus Pedidos',
          style: TextStyle(color: principalColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: orderList.length,
        itemBuilder: (context, index) => _orderCard(
          orderList[index],
        ),
      ),
    );
  }

  _orderCard(HistoryData order) {
    return ExpansionCard(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                order.orderNumber,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                order.orderDate,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          Text(
            '\$${order.totalPrice}',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
      children: [
        Container(
          height: 350,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.white,
            boxShadow: shadowBox,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _subTitleCard('Estado'),
              Text(
                order.status,
                style: styleDescTextProfile,
              ),
              Divider(),
              _subTitleCard('Dirección'),
              Text(
                order.deliveryAddress,
                style: styleDescTextProfile,
              ),
              Divider(),
              _subTitleCard('Forma de Pago'),
              Text(
                order.wayPay,
                style: styleDescTextProfile,
              ),
              Divider(),
              _subTitleCard('Productos'),
              SizedBox(height: 8),
              Expanded(
                child: Container(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(),
                    physics: BouncingScrollPhysics(),
                    itemCount: order.productList.length,
                    itemBuilder: (context, index) => _listProduct(
                      order.productList[index],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }

  _subTitleCard(String title) {
    return Text(
      title,
      style: styleTextProfile,
    );
  }

  _listProduct(ShoppingProduct product) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          product.weight,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: styleDescTextProfile,
        ),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            product.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: styleDescTextProfile,
          ),
        ),
        Text(
          '\$ ' + product.totalPrice.toString(),
          style: styleDescTextProfile,
        ),
      ],
    );
  }
}
