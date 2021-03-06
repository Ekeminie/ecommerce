import 'package:flutter/material.dart';
import 'package:green_tech/core/exports.dart';
import 'package:green_tech/features/address_page.dart';

class YourInfoPage extends StatefulWidget {
  @override
  _YourInfoPageState createState() => _YourInfoPageState();
}

class _YourInfoPageState extends State<YourInfoPage> {
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
          backgroundColor: Colors.grey[200],
            drawer: customAppDrawer(context,yourAccount, toggleIsExpanded(yourAccount)),
            appBar: customAppBar(context, hasSpace: false, title:"Your Info"),
            body: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                  padding: EdgeInsets.all(10), child: ListView(children: [
                    SizedBox(height: 30.h,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Phone',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 30.h,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AddressPage()));
                  },
                  child: Text("NEXT",
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Pallet.white,
                          fontWeight: FontWeight.bold)),
                  color: Pallet.primaryColor,
                  padding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                ),
              ]));
            })));
  }
}
