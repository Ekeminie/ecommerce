import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:green_tech/core/constants.dart';
import 'package:green_tech/core/pallet.dart';
import 'package:green_tech/core/widgets/custom_appbar.dart';
import 'package:green_tech/core/widgets/custom_drawer.dart';
import 'package:green_tech/core/utils.dart';
import 'package:green_tech/core/widgets/responsive_text.dart';
import 'dart:math' as math;

import 'package:green_tech/features/your_info_page.dart';

class TermsAndConditionsPage extends StatefulWidget {
  @override
  _TermsAndConditionsPageState createState() => _TermsAndConditionsPageState();
}

class _TermsAndConditionsPageState extends State<TermsAndConditionsPage> {
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
            appBar: customAppBar(context, hasSpace: false, title: "Terms and Conditions"),
            body: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                padding:EdgeInsets.all(10),
                child: Material(
                  elevation:5,
                  color:Colors.white,
                  child: Container(
                      padding: EdgeInsets.all(20), child: ListView(children: [
                        Wrap(
                          children: [
                            Text("General Terms",style:TextStyle(color:Pallet.textDark, fontSize:18,fontWeight: FontWeight.w700)),
                            SizedBox(height: 20,),
                            Text(dummyText,style:TextStyle(color:Pallet.textDark, fontSize:16)),
                          ],
                        ),
                    SizedBox(height: 30,),
                    Wrap(children: [
                      Text("Personal Data",style:TextStyle(color:Pallet.textDark, fontSize:18,fontWeight: FontWeight.w700)),
                      SizedBox(height: 20,),
                      Text(dummyText,style:TextStyle(color:Pallet.textDark, fontSize:16)),

                    ],),


                    SizedBox(height: 30,),
                    Wrap(children: [
                      Text("Privacy Agreement",style:TextStyle(color:Pallet.textDark, fontSize:18,fontWeight: FontWeight.w700)),
                      SizedBox(height: 20,),
                      Text(dummyText,style:TextStyle(color:Pallet.textDark, fontSize:16)),

                    ],),

                    SizedBox(height: 20,),

                  ])),
                ),
              );
            })));
  }
}
