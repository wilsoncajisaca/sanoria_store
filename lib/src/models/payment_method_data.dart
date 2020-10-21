import 'package:sanoria_store/src/widgets/payment_method.dart';

class PaymentMethodData {
  PaymentMethodData({this.id, this.imgUri, this.name, this.isSelected});

  final int id;
  final String imgUri;
  final String name;
  bool isSelected;
}
