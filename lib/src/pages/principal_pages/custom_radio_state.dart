import 'package:flutter/material.dart';
import 'package:sanoria_store/src/commons/colors.dart';

class CustomRadio extends StatefulWidget {
  @override
  createState() {
    return new CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {
  List<RadioModel> sampleData = new List<RadioModel>();

  @override
  void initState() {
    super.initState();
    sampleData.add(new RadioModel(false, 'A', 'April 18'));
    sampleData.add(new RadioModel(false, 'B', 'April 17'));
    sampleData.add(new RadioModel(false, 'C', 'April 16'));
    sampleData.add(new RadioModel(false, 'D', 'April 15'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListItem"),
      ),
      body: Column(
        children: [
          Container(
            height: 85,
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: sampleData.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      sampleData
                          .forEach((element) => element.isSelected = false);
                      sampleData[index].isSelected = true;
                    });
                  },
                  child: RadioItem(sampleData[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: _item.isSelected ? Colors.black12 : Colors.white,
        boxShadow: shadowBox,
      ),
      child: ListTile(
        title: Text('Casa'),
        subtitle: Text('Direccion especifica.'),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {},
        ),
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText;
  final String text;

  RadioModel(this.isSelected, this.buttonText, this.text);
}
