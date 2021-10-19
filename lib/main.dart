
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/settngpg.dart';
import 'package:task/bodypart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NwPage(),
  ));
}

class NwPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Nwpages();
  }
}

class _Nwpages extends State<NwPage> {
  var menu = ['select a company','Apple', 'Google', 'Samsung', 'Sony', 'LG'];
  var _currentItem = 'select a company';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => settingpage()));
                },
                icon: Icon(Icons.settings))
          ],
          backgroundColor: Colors.pink,
          title: Center(
            child: Text(
              'Crypto App',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),

       body: BodyPart(),
        bottomSheet: Center(
          child: DropdownButton(
            items: menu.map((e) {
              return DropdownMenuItem<String>(
                child: Text(e),
                value: e,
              );
            }).toList(),
            value: _currentItem,
            onChanged: (newSelect) {
              setState(() {
                this._currentItem = newSelect.toString();
              });
            },

          ),
        )
    );
  }


}
