import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sanoria_store/src/commons/routes.dart';
import 'package:sanoria_store/src/pages/principal_pages/payment.dart';
import 'package:sanoria_store/src/pages/principal_pages/splash_page.dart';
import 'package:sanoria_store/src/services/product_services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductServices()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sanoria Store',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashPage(),
        routes: appRoutes,
      ),
    );
  }
}
