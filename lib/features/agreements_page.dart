import 'package:flutter/material.dart';
import 'package:green_tech/core/exports.dart';

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
                            Text("General Terms",style:TextStyle(color:Pallet.textDark, fontSize:18.sp,fontWeight: FontWeight.w700)),
                            SizedBox(height: 20.h,),
                            Text(dummyText,style:TextStyle(color:Pallet.textDark, fontSize:16.sp)),
                          ],
                        ),
                    SizedBox(height: 30.h,),
                    Wrap(children: [
                      Text("Personal Data",style:TextStyle(color:Pallet.textDark, fontSize:18.sp,fontWeight: FontWeight.w700)),
                      SizedBox(height: 20.h,),
                      Text(dummyText,style:TextStyle(color:Pallet.textDark, fontSize:16.sp)),

                    ],),


                    SizedBox(height: 30.h,),
                    Wrap(children: [
                      Text("Privacy Agreement",style:TextStyle(color:Pallet.textDark, fontSize:18.sp,fontWeight: FontWeight.w700)),
                      SizedBox(height: 20.h,),
                      Text(dummyText,style:TextStyle(color:Pallet.textDark, fontSize:16)),

                    ],),

                    SizedBox(height: 20.h,),

                  ])),
                ),
              );
            })));
  }
}
