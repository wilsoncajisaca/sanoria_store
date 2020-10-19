import 'package:flutter/material.dart';
import 'package:sanoria_store/src/commons/colors.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> data = ['1', '2', '3', '4', '5'];
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
          'Mis Direcciones',
          style: TextStyle(color: principalColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Divider(),
        ),
        physics: BouncingScrollPhysics(),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Cuenca'),
            subtitle: Text('Mariano Cueva 9-59 y Gran Colombia'),
            trailing: IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.redAccent,
              ),
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}
