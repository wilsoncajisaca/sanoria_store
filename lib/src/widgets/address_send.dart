import 'package:flutter/material.dart';
import 'package:sanoria_store/src/commons/colors.dart';
import 'package:sanoria_store/src/models/address_data.dart';

class AddressSendContainer extends StatelessWidget {
  final AddressData addressData;
  const AddressSendContainer({@required this.addressData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: shadowBox,
        border: Border.all(
          color:
              addressData.isSelected ? Color(0xff393551) : Colors.transparent,
          width: 0.5,
        ),
      ),
      child: ListTile(
        title: Text(
          addressData.title,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: addressData.isSelected ? Color(0xff393551) : Colors.black38,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          addressData.address,
          style: TextStyle(
            color: addressData.isSelected ? Color(0xff393551) : Colors.black38,
            fontWeight: FontWeight.w300,
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.edit,
            color: addressData.isSelected ? Color(0xff393551) : Colors.black38,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
