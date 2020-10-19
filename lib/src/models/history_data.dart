import 'package:sanoria_store/src/models/shoppingProduct.dart';

class HistoryData {
  final String status;
  final String orderNumber;
  final String orderDate;
  final String totalPrice;
  final String deliveryAddress;
  final String wayPay;
  final List<ShoppingProduct> productList;

  const HistoryData({
    this.status,
    this.deliveryAddress,
    this.wayPay,
    this.productList,
    this.orderNumber,
    this.orderDate,
    this.totalPrice,
  });
}

const orderList = [
  HistoryData(
    orderNumber: '001-523-4',
    orderDate: '20-Septiembre-2020 13:25',
    totalPrice: '21.95',
    deliveryAddress: 'Centro Historico - Cuenca',
    wayPay: 'Contra Entrega',
    status: 'Pendiente',
    productList: shoppingProductList,
  ),
  HistoryData(
    orderNumber: '001-523-5',
    orderDate: '12-Abril-2020 11:26',
    totalPrice: '19.95',
    deliveryAddress: 'Terminal Terrestre - Cuenca',
    wayPay: 'Tarjeta',
    status: 'Entregado',
    productList: shoppingProductList,
  ),
  HistoryData(
    orderNumber: '001-523-6',
    orderDate: '12-Marzo-2020 15:30',
    totalPrice: '24.00',
    deliveryAddress: 'Chola Cuencana - Cuenca',
    wayPay: 'Contra Entrega',
    status: 'Entregado',
    productList: shoppingProductList,
  ),
];
