import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanoria_store/src/commons/colors.dart';
import 'package:sanoria_store/src/commons/style_text.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
            height: heigth * 0.25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(5),
            child: SvgPicture.asset(
              'assets/svg/profile.svg',
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: black06,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                boxShadow: shadowBox,
              ),
              height: 525,
              width: MediaQuery.of(context).size.width - 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Wilson Cajisaca',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '0982536543',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Pedidos Pendientes: 1',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 1,
                    color: Colors.black26,
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              'Favoritos',
                              style: styleTextProfile,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                            onTap: () =>
                                Navigator.pushNamed(context, 'favorite_page'),
                          ),
                          ListTile(
                            title: Text(
                              'Ordenes',
                              style: styleTextProfile,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                            onTap: () =>
                                Navigator.pushNamed(context, 'order_page'),
                          ),
                          ListTile(
                            title: Text(
                              'Direcciones',
                              style: styleTextProfile,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                            onTap: () =>
                                Navigator.pushNamed(context, 'address_page'),
                          ),
                          ListTile(
                            title: Text(
                              'Mis datos',
                              style: styleTextProfile,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
