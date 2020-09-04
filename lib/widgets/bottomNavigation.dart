import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BottomBar extends StatefulWidget {
  @override
  _BottoBarState createState() => _BottoBarState();
}

class _BottoBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
          color:Colors.white,
          height:  ScreenUtil().setHeight(151),
          width:MediaQuery.of(context).size.width,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            RaisedButton(onPressed: (){
              
            },
            color:Colors.orange[300],
            child: Text("BACK TO SHOP",style: TextStyle(color:Colors.white),),

            ),
             RaisedButton(onPressed: (){
              
            },
            color:Colors.orange[300],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child: Text("CART",style: TextStyle(color:Colors.white),),
            ),

            )
          ],),
        );
  }
}