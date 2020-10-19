import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sanoria_store/src/commons/colors.dart';

class NotificationPage extends StatelessWidget {
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
          'Notificaciones',
          style: TextStyle(color: principalColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset('assets/lottie/emptyNotification.json'),
              Text(
                'NO TIENES NUEVAS NOTIFICACIONES POR EL MOMENTO.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
