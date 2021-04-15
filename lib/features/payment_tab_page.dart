import 'package:flutter/material.dart';
import 'package:green_tech/core/exports.dart';
import 'package:green_tech/features/agreements_page.dart';
import 'package:green_tech/features/payment_page.dart';
class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
                child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Name",
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Surname",
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Card Number",
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Expiry Date",
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "CVV",
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
            SizedBox(
              height: 30.h,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("SubTotal"),
                      Text("469"),
                    ])),
            SizedBox(
              height: 30.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: FlatButton(
                minWidth: double.infinity,
                onPressed: () {
                  showAlertDialog(context);

                },
                child: Text("NEXT",
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Pallet.white,
                        fontWeight: FontWeight.bold)),
                color: Pallet.primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          content: Container(
              width: mq.height / 1.5.w,
              height: mq.height / 3.h,
              decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color(0xFFFFFF),
                borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
              ),
              child: Column(
                children: [
                  Flexible(
                    child: CircleAvatar(
                      backgroundColor:Colors.white,
                      radius: 60,
                      child: Container(
                        //padding:EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                            border: Border.all(color: Pallet.primaryColor, width: 2)
                        ),
                        child: CircleAvatar(
                          backgroundColor:Colors.white,
                          radius: 60,
                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            mainAxisSize:MainAxisSize.min,
                            children: [
                              Icon(Icons.check, color:Pallet.primaryColor),
                              Text("Success",style:TextStyle(color:Pallet.primaryColor, fontSize:18.sp))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h,),
                  Text("Thank you for your Purchase",style:TextStyle(color:Pallet.textLight, fontSize:18.sp)),
                  SizedBox(height: 20.h,),
                  Text("Order Code",style:TextStyle(color:Pallet.textDark, fontSize:18.sp)),
                  SizedBox(height: 10.h,),
                  Text("14BO7D90",style:TextStyle(color:Pallet.textDark, fontSize:18.sp,fontWeight: FontWeight.w500))
                ],
              ) //Contents here
              ),
        );
      },
    );
  }
}
