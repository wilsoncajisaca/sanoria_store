import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:sanoria_store/src/commons/colors.dart';
import 'package:sanoria_store/src/pages/view_pages/product_page.dart';
import 'package:sanoria_store/src/pages/view_pages/home.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:sanoria_store/src/pages/view_pages/my_account.dart';
import 'package:sanoria_store/src/pages/view_pages/shopping_car_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    String titleFromPage = 'Store';
    setState(() {
      if (_currentIndex == 0) {
        titleFromPage = 'Store';
      } else if (_currentIndex == 1) {
        titleFromPage = 'Productos';
      } else if (_currentIndex == 2) {
        titleFromPage = 'Mi Cesta';
      } else if (_currentIndex == 3) {
        titleFromPage = 'Mi Cuenta';
      }
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.notifications_none,
            color: principalColor,
          ),
          onPressed: () => Navigator.pushNamed(context, 'notification_page'),
        ),
        title: Text(
          titleFromPage,
          style: TextStyle(fontWeight: FontWeight.w400, color: principalColor),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: principalColor,
            ),
            onPressed: () => Navigator.pushNamed(context, 'search_page'),
          ),
        ],
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            HomePage(),
            ProductPage(),
            ShoppingCarPage(),
            MyAccount(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(
            () => _currentIndex = index,
          );
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            activeColor: Colors.deepOrange[400],
            title: Text('Descubre'),
            icon: Icon(LineAwesomeIcons.home),
          ),
          BottomNavyBarItem(
            activeColor: Colors.deepOrange[400],
            title: Text('Productos'),
            icon: Icon(LineAwesomeIcons.list),
          ),
          BottomNavyBarItem(
            activeColor: Colors.deepOrange[400],
            title: Text('Cesta'),
            icon: Icon(LineAwesomeIcons.shopping_bag),
          ),
          BottomNavyBarItem(
            activeColor: Colors.deepOrange[400],
            title: Text('Mi Cuenta'),
            icon: Icon(LineAwesomeIcons.user),
          ),
        ],
      ),
    );
  }
}
