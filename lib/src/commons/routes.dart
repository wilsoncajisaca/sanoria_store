import 'package:flutter/material.dart';
import 'package:sanoria_store/src/pages/principal_pages/notification_page.dart';
import 'package:sanoria_store/src/pages/principal_pages/payment.dart';
import 'package:sanoria_store/src/pages/principal_pages/search_page.dart';
import 'package:sanoria_store/src/pages/profile_pages/address_page.dart';
import 'package:sanoria_store/src/pages/profile_pages/favorites_page.dart';
import 'package:sanoria_store/src/pages/principal_pages/login_page.dart';
import 'package:sanoria_store/src/pages/principal_pages/main_page.dart';
import 'package:sanoria_store/src/pages/profile_pages/order_page.dart';
import 'package:sanoria_store/src/pages/principal_pages/register_page.dart';
import 'package:sanoria_store/src/pages/principal_pages/splash_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'splash': (_) => SplashPage(),
  'main_page': (_) => MainPage(),
  'favorite_page': (_) => FavoritePage(),
  'order_page': (_) => OrderPage(),
  'address_page': (_) => AddressPage(),
  'notification_page': (_) => NotificationPage(),
  'search_page': (_) => SearchPage(),
  'payment_page': (_) => PaymentPage(),
};
