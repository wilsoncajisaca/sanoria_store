import 'package:flutter/material.dart';
import 'package:sanoria_store/src/commons/colors.dart';
import 'package:sanoria_store/src/commons/style_text.dart';
import 'package:sanoria_store/src/models/address_data.dart';
import 'package:sanoria_store/src/models/payment_method_data.dart';
import 'package:sanoria_store/src/widgets/address_send.dart';
import 'package:sanoria_store/src/widgets/payment_method.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  List<AddressData> addressList;
  List<PaymentMethodData> paymentMethodList;

  @override
  void initState() {
    super.initState();
    addressList = [
      AddressData(
        title: 'Casa',
        address: 'Azogues - Frente al terminal terrestre',
        id: '1',
        isSelected: true,
      ),
      AddressData(
        title: 'Trabajo',
        address: 'Cuenca - San Blas y Via Huainacapac',
        id: '1',
        isSelected: false,
      ),
    ];
    paymentMethodList = [
      PaymentMethodData(
        id: 1,
        imgUri: 'paymentMethod/mastercard.png',
        name: 'Tarjeta de Credito',
        isSelected: true,
      ),
      PaymentMethodData(
        id: 2,
        imgUri: 'paymentMethod/paypal.png',
        name: 'PayPal',
        isSelected: false,
      ),
      PaymentMethodData(
        id: 3,
        imgUri: 'paymentMethod/pay.png',
        name: 'Contra Entrega',
        isSelected: false,
      ),
    ];
  }

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
          'Revisar',
          style: TextStyle(color: principalColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _addresSend(),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Metodo de Pago',
                  style: styleTextSubTitle,
                ),
              ),
              _paymentMethod(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Costo de Envio:",
                          style: styleTextProfile,
                        ),
                        Text(
                          "\$3.00",
                          style: styleTextProfile,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total:", style: styleTextSubTitle),
                        Text("\$3.00", style: styleTextSubTitle),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: RaisedButton(
                    shape: StadiumBorder(),
                    child: Container(
                      height: 45,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                        child: Text(
                          'PAGAR',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    color: Color(0xff393551),
                    onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _addresSend() {
    return Container(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: addressList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              addressList.forEach((element) => element.isSelected = false);
              addressList[index].isSelected = true;
            });
          },
          child: AddressSendContainer(
            addressData: addressList[index],
          ),
        ),
      ),
    );
  }

  _paymentMethod() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: paymentMethodList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              paymentMethodList
                  .forEach((element) => element.isSelected = false);
              paymentMethodList[index].isSelected = true;
            });
          },
          child: PaymentMethod(
            paymentMethodData: paymentMethodList[index],
          ),
        ),
      ),
    );
  }
}
