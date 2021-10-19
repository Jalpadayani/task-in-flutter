
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyPart extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return Body_Part();
  }
  
}
class Body_Part extends State<BodyPart>{
  var coins = ['Bitcoin', 'Ethereum', 'Ripple', 'Bitcoin Cash','Litecoin',' Neo','Stellar','Cardano'];

  @override
  Widget build(BuildContext context) {
   return ListView.builder(
       itemCount: coins.length,
       itemBuilder: (context,index){
         var firstlater = (coins[index].toString())[0];
         var color = [Colors.cyan,Colors.blueAccent,Colors.indigo,Colors.cyan,Colors.blueAccent,Colors.indigo,Colors.cyan,Colors.blueAccent];
     return Padding(
       padding: const EdgeInsets.all(10.0),
       child: Card(
         child: ListTile(
           title: Text(coins[index]),
           subtitle: Text('\$9296.04'),
           leading: CircleAvatar(
             child: Text(firstlater,style: TextStyle(fontSize: 28,fontWeight: FontWeight.w900,color: Colors.white),
             ) ,
             backgroundColor: color[index],
           ),

         ),
       ),
     );
   });
  }
  
}