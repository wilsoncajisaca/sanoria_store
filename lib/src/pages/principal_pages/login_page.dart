import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sanoria_store/src/services/product_services.dart';
import 'package:sanoria_store/src/widgets/buttom_circular_container.dart';
import 'package:sanoria_store/src/widgets/input_text.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productServices = Provider.of<ProductServices>(context);
    final height = MediaQuery.of(context).size.height;
    final ctrlTxtEmail = TextEditingController();
    final ctrlTxtPassword = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xfff4f8fb),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Colors.black54,
        ),
      ),
      body: Container(
        height: height * 0.7,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 25,
              offset: Offset(0.0, 10.0),
            )
          ],
        ),
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bienvenido a Sanoria",
                style: TextStyle(
                    fontSize: height * 0.035, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 8),
              Text(
                "Inicia Session a continuación.",
                style: TextStyle(
                    fontSize: height * 0.022, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 12),
              InputText(
                hintText: "Correo Electronico",
                ctrlName: ctrlTxtEmail,
                inputType: TextInputType.emailAddress,
              ),
              InputText(
                hintText: "Contraseña",
                ctrlName: ctrlTxtPassword,
                obscureText: true,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    shape: StadiumBorder(),
                    color: Colors.green[300],
                    child: Container(
                      height: 45,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Entrar",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      productServices.Login(ctrlTxtEmail.text);
                    },
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      color: Colors.black38,
                      height: 1,
                    ),
                  ),
                  Text("Iniciar con"),
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      color: Colors.black38,
                      height: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtomCircularContainer(
                    imageAsset: 'assets/images/facebook.png',
                    onPressed: null,
                  ),
                  SizedBox(width: 30),
                  ButtomCircularContainer(
                    imageAsset: 'assets/images/google.png',
                    onPressed: null,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
