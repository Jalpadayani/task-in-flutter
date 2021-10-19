
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Setting_page();
  }
}

class Setting_page extends State<settingpage>{
  @override
   var iswitch = false;
   var anrod = true;
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:  AppBar(
        title: Text('Setting',style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),),

      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                'Dark Mode On',
              ),
              Switch(value: iswitch,

                  onChanged: (value){
                setState(() {
                  iswitch = value;
                });
              }),
            ],
          ),
          Row(
            children: [
              Text(
                'Android View',
              ),
              Switch(value: anrod,

                  onChanged: (value){
                    setState(() {
                      anrod = value;
                    });
                  }),
            ],
          ),

        ],
      ),

    );
  }
}