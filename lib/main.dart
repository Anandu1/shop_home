import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Tile.dart';
import 'noticeTile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShopHome(),
    );
  }
}

class ShopHome extends StatefulWidget {
  @override
  _ShopHomeState createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:28.0),
          child: Container(color: Colors.greenAccent[100],
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: new AssetImage("icons/stellar1.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 40,
                        color: Colors.white,
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 20,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0)),
                                borderSide: BorderSide(
                                    color: Colors.grey, style: BorderStyle.solid)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Colors.blue, style: BorderStyle.solid)),
                            hintText: "Search anything",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                          ),
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          image: DecorationImage(
                            image: new AssetImage("images/hrithik.png"),
                            fit: BoxFit.cover
                          )
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey
                                ),
                                image: DecorationImage(
                                    image: new AssetImage("images/shoes2.png",),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Text("FOOTWEAR")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.grey
                                ),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: new AssetImage("images/cup_t.png"),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Text("HOME")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.grey
                                ),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: new AssetImage("images/ps4_console_white_1.png"),
                                    fit: BoxFit.contain
                                )
                            ),
                          ),
                          Text("GADGETS")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.grey
                                ),

                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: new AssetImage("images/apple_watch.png"),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Text("JEWELLERY")
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Special Offers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("View More",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
                    ],
                  ),
                ),
                Container(width: double.infinity,
                  height: 220,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: noticeTile(
                            "images/Image Banner 2.png",
                            "Rs 300 off on this Combo\nUse Code GPS234 now till mar 1",
                            "View Now",
                            Colors.greenAccent),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: noticeTile(
                            "images/Image Banner 3.png",
                            "Rs 300 off on this Combo\nUse Code GPS234 now till mar 1",
                            "View Now",
                            Colors.blueAccent[100]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: noticeTile(
                            "images/Image Banner 2.png",
                            "Rs 300 off on this Combo\nUse Code GPS234 now till mar 1",
                            "View Now",
                            Colors.pinkAccent[100]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0,top: 8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Your Offers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  ),
                ),
                Container(height: 600,
                  child: GridView.count(crossAxisCount: 2,physics: NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tile(
                          "images/product 1 image.png",
                          "Polo T-shirt",
                          "Get 75% off", "From Raymonds",
                          "Go to Shop",
                          Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tile(
                          "images/finShirt.png",
                          "Polo Green T-shirt",
                          "Get 75% off", "From Raymonds",
                          "Go to Shop",
                          Colors.white),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tile(
                          "images/wireless headset.png",
                          "Polo Green T-shirt",
                          "Get 75% off", "From Raymonds",
                          "Go to Shop",
                          Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tile(
                          "images/watch_t.png",
                          "Polo Green T-shirt",
                          "Get 75% off", "From Raymonds",
                          "Go to Shop",
                          Colors.white),
                    ),
                  ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
