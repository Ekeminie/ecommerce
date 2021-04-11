import 'package:flutter/material.dart';

AppBar customAppBar(context, {bool hasSpace = true}){
  final mq = MediaQuery.of(context).size;
 return  AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      title: Text("Details", style: TextStyle(color: Colors.white)),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
      bottom: hasSpace ? PreferredSize(
        child: Container(
          height: mq.height/17,
        ),
        preferredSize: Size.fromHeight(mq.height / 15),
      ): null
  );
}