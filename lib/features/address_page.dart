import "package:flutter/material.dart";
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:green_tech/core/pallet.dart';
import 'package:green_tech/core/widgets/custom_appbar.dart';
import 'package:green_tech/core/widgets/custom_drawer.dart';
import 'package:green_tech/core/utils.dart';
import 'package:green_tech/core/widgets/responsive_text.dart';
import 'package:green_tech/features/payment_page.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  toggleIsExpanded(bool isExpanded) {
    isExpanded = !isExpanded;
    setState(() {});
  }

  bool yourAccount = true;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          drawer: customAppDrawer(context,yourAccount, toggleIsExpanded(yourAccount)),
          appBar: customAppBar(context, hasSpace: false,title:"Address"),
          body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              padding:EdgeInsets.all(10),
              child: ListView(
                children: [

                SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Country',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'City',
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'State / Region / Province',
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Zip Code',
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Address 1',
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Address 2',
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    child: TextField(
                        keyboardType: TextInputType.multiline,
                        minLines: 5,//Normal textInputField will be displayed
                        maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'Comment...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => PaymentPage()));
                    },
                    child: Text("NEXT",
                        style: TextStyle(
                            fontSize: 15,
                            color: Pallet.white,
                            fontWeight: FontWeight.bold)),
                    color: Pallet.primaryColor,
                    padding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  ),
                ],
              ),
            );
          })),
    );
  }
}
