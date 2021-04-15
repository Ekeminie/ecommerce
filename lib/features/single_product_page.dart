import "package:flutter/material.dart";
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:green_tech/core/exports.dart';
import 'package:green_tech/features/cart_page.dart';

class SingleProductPage extends StatefulWidget {
  @override
  _SingleProductPageState createState() => _SingleProductPageState();
}

class _SingleProductPageState extends State<SingleProductPage> {
  toggleIsExpanded(bool isExpanded) {
    isExpanded = !isExpanded;
    setState(() {});
  }

  bool yourAccount = true;
  bool isFavorite = false;
  var colorItem = List<ColorItem>();
  var sizeItem = List<ColorItem>();
  var detailsItem = List<ColorItem>();

  @override
  void initState() {
    colorItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: customAppDrawer(context,yourAccount, toggleIsExpanded(yourAccount)),
        appBar: customAppBar(context, hasSpace: false),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Material(
              elevation: 5,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: ListView(
                  children: [
                    Container(
                        height: mq.height / 2.5.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("login_bg".jpg),
                              fit: BoxFit.cover),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Black T-Shirt",
                            style: TextStyle(
                                color: Pallet.textDark,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500)),
                        RatingBarIndicator(
                          rating: 3,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 16.0,
                          direction: Axis.horizontal,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text("New Seasons T-Shirt",
                        style:
                            TextStyle(color: Pallet.textLight, fontSize: 14.sp)),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$45.90",
                            style: TextStyle(
                                color: Pallet.textDark,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700)),
                        IconButton(
                          icon: Icon(
                            !isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: isFavorite ? null : Colors.red,
                          ),
                          onPressed: () {
                            isFavorite = !isFavorite;
                            setState(() {});
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text("Color",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600)),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: colorItem
                          .map((e) => InkWell(
                                onTap: () {
                                  colorItem.forEach((element) {
                                    element.onTapped = false;
                                  });
                                  e.onTapped = true;
                                  setState(() {});
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 10.w),
                                  width: (constraints.maxWidth - 60) / 7.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                    borderRadius: new BorderRadius.circular(3),
                                    color: e.color,
                                  ),
                                  child: e.onTapped
                                      ? Icon(Icons.check, color: Colors.white)
                                      : SizedBox.shrink(),
                                ),
                              ))
                          .toList(),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Size",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600)),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: sizeItem
                            .map((e) => InkWell(
                                  onTap: () {
                                    sizeItem.forEach((element) {
                                      element.onTapped = false;
                                    });
                                    e.onTapped = true;
                                    setState(() {});
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(right: 10.w),
                                    width: (constraints.maxWidth - 40) / 6,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          new BorderRadius.circular(3),
                                      color: e.onTapped
                                          ? Pallet.primaryColor
                                          : null,
                                    ),
                                    child: Text(e.size,
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: e.onTapped
                                                ? Pallet.white
                                                : Pallet.textDark)),
                                  ),
                                ))
                            .toList()),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => CartPage()));
                            },
                            child: Text("BUY NOW",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Pallet.white,
                                    fontWeight: FontWeight.bold)),
                            color: Pallet.primaryColor,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 15.h),
                          ),
                        ),
                        SizedBox(
                          width: 10.h,
                        ),
                        Expanded(
                            child: Center(
                                child: Text("ADD TO \nWISHLIST",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold)))),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => CartPage()));
                            },
                            child: Text("ADD TO CART",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Pallet.white,
                                    fontWeight: FontWeight.bold)),
                            color: Pallet.primaryColor,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 15.h),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Details",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600)),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: detailsItem
                            .map((e) => Padding(
                                  padding: EdgeInsets.only(bottom: 5.0.h),
                                  child: Text("- ${e.details}",
                                      style: TextStyle(
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(context, 12),
                                          fontWeight: FontWeight.w500,
                                          color: Pallet.textDark)),
                                ))
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Customer Reiviews",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600)),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Keita Frei",
                        style: TextStyle(
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(context, 14),
                            fontWeight: FontWeight.w500,
                            color: Pallet.textDark)),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBarIndicator(
                          rating: 3,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 20.0,
                          direction: Axis.horizontal,
                        ),
                        Text("2 days ago",
                            style: TextStyle(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w500,
                                color: Pallet.textDark)),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                        "Many Desktop publishing packages and web page editors now use Lorem Ipsum as their default model tedt and a search for lorem ipsum will uncover many.",
                        style: TextStyle(
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(context, 14),
                            fontWeight: FontWeight.w500,
                            color: Pallet.textDark)),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Keita Frei",
                        style: TextStyle(
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(context, 14),
                            fontWeight: FontWeight.w500,
                            color: Pallet.textDark)),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBarIndicator(
                          rating: 3,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 20.0,
                          direction: Axis.horizontal,
                        ),
                        Text("2 days ago",
                            style: TextStyle(
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 14),
                                fontWeight: FontWeight.w500,
                                color: Pallet.textDark)),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                        "Many Desktop publishing packages and web page editors now use Lorem Ipsum as their default model tedt and a search for lorem ipsum will uncover many.",
                        style: TextStyle(
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(context, 14),
                            fontWeight: FontWeight.w500,
                            color: Pallet.textDark))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  colorItems() {
    colorItem.add(ColorItem(color: Colors.red, onTapped: false));
    colorItem.add(ColorItem(color: Colors.blue, onTapped: false));
    colorItem.add(ColorItem(color: Colors.grey, onTapped: false));
    colorItem.add(ColorItem(color: Colors.green[700], onTapped: false));
    colorItem.add(ColorItem(color: Colors.purple, onTapped: false));
    colorItem.add(ColorItem(color: Colors.blue[900], onTapped: false));

    sizeItem
        .add(ColorItem(color: Colors.blue[900], onTapped: false, size: "XS"));
    sizeItem
        .add(ColorItem(color: Colors.blue[900], onTapped: false, size: "X"));
    sizeItem
        .add(ColorItem(color: Colors.blue[900], onTapped: false, size: "M"));
    sizeItem
        .add(ColorItem(color: Colors.blue[900], onTapped: false, size: "L"));
    sizeItem
        .add(ColorItem(color: Colors.blue[900], onTapped: false, size: "XL"));

    detailsItem.add(ColorItem(
        details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"));
    detailsItem.add(ColorItem(
        details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"));
    detailsItem.add(ColorItem(
        details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"));
    detailsItem.add(ColorItem(
        details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"));
    detailsItem.add(ColorItem(
        details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"));
  }
}

class ColorItem {
  bool onTapped = false;
  final Color color;
  final String size;
  final String details;

  ColorItem({this.color, this.onTapped, this.size, this.details});
}
