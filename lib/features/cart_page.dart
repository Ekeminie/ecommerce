import 'package:flutter/material.dart';
import 'package:green_tech/core/exports.dart';
import 'dart:math' as math;

import 'package:green_tech/features/your_info_page.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  toggleIsExpanded(bool isExpanded) {
    isExpanded = !isExpanded;
    setState(() {});
  }

  bool yourAccount = true;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            drawer: customAppDrawer(context,yourAccount, toggleIsExpanded(yourAccount)),
            appBar: customAppBar(context, hasSpace: false, title:"Cart"),
            body: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                  padding: EdgeInsets.all(20),
                  child: ListView(
                    children: [
                      singleCartItem(mq),
                      SizedBox(
                        height: 10.h,
                      ),
                      singleCartItem(mq),
                      SizedBox(
                        height: 10.h,
                      ),
                      singleCartItem(mq),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        children: [
                          Text("Subtotal - ",
                              style: TextStyle(
                                  fontSize: 22.sp, color: Pallet.textDark)),
                          Text("3 Items ",
                              style: TextStyle(
                                  fontSize: 14.sp, color: Pallet.textDark)),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                            ),
                          ),
                          Text("\$ 100.00 ",
                              style: TextStyle(
                                  fontSize: 18.sp, color: Pallet.textDark)),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => YourInfoPage()));
                        },
                        child: Text("PROCEED TO CHECKOUT",
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Pallet.white,
                                fontWeight: FontWeight.bold)),
                        color: Pallet.primaryColor,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                      ),
                    ],
                  ));
            })));
  }

  Widget singleCartItem(Size mq) {
    return Material(
      elevation: 5,
      color: Colors.white,
      child: Container(
        height: mq.height / 4.5.h,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(20),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("login_bg".jpg), fit: BoxFit.cover),
                  )),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Black T-Shirt",
                      style: TextStyle(
                          color: Pallet.textDark,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("New Seasons T-Shirt",
                      style: TextStyle(color: Pallet.textLight, fontSize: 14.sp)),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Transform.rotate(
                          angle: math.pi * 2.5,
                          child: IconButton(
                              icon: Icon(Icons.keyboard_arrow_right),
                              onPressed: () {})),
                      Text("1"),
                      Transform.rotate(
                          angle: math.pi * 3.5,
                          child: IconButton(
                              icon: Icon(Icons.keyboard_arrow_right),
                              onPressed: () {}))
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text("\$45.00",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
