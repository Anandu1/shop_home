import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Tile(String img, String notice, String date ,String company, String goto,Color color) {
  return Container(decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),

      color: Colors.white
  ),
    width: 300,
    height:30 ,
    child:
    Column(crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 100,width: 300,
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.contain
          )
        ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(140, 0, 0, 100),
            child: IconButton(
              icon: Icon(Icons.favorite,color: Colors.red,),
            ),
          ),
            ),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(notice,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14,)),
          ],
        ),

      Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(date,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
        ],
      ),
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(company,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12)),
              Row(
                children: [
                  Icon(Icons.shopping_bag,color: Colors.blue,),
                  Text(goto,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12)),
                ],
              ),


            ],
          ),
        ),
      ],
    ),
  );
}
