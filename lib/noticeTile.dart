import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget noticeTile(String img, String notice, String date,Color color) {
  return Container(decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    image: DecorationImage(
      image: AssetImage(img),
      fit: BoxFit.cover
    ),
    color: Colors.white
  ),
    width: 300,
    height:30 ,
    child:
        Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

                 Text(notice,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
            RaisedButton(color: Colors.white.withOpacity(0.2),
                child: Text(date,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)))
          ],
        ),
  );
}
