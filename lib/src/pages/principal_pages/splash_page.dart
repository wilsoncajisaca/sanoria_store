import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/logo.jpg'),
              ),
            ),
            Text(
              "Bienvenido a Planeta Huerto",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            _buttomSplash(
              color: Color(0xff44c662),
              colorTitle: Colors.white,
              title: "Ingresa",
              onPressed: () => Navigator.pushNamed(context, 'login'),
            ),
            _buttomSplash(
              color: Colors.white,
              colorTitle: Color(0xff44c662),
              title: "Regístrate",
              onPressed: () => Navigator.pushNamed(context, 'register'),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(context, 'main_page'),
              child: Text(
                "Quiero echarle un vistazo",
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15),
              ),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Revisa nuestros terminos y condiciones.",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

class _buttomSplash extends StatelessWidget {
  final Color color;
  final Color colorTitle;
  final String title;
  final Function onPressed;

  const _buttomSplash({
    @required this.color,
    @required this.title,
    @required this.onPressed,
    @required this.colorTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xff44c662),
            width: 1,
          ),
        ),
        child: Center(
            child: Text(
          this.title,
          style: TextStyle(color: colorTitle, fontSize: 20),
        )),
      ),
    );
  }
}
