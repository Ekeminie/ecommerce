import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:green_tech/core/pallet.dart';
import "package:green_tech/core/utils.dart";
import 'package:green_tech/core/widgets/custom_appbar.dart';
import 'package:green_tech/core/widgets/custom_drawer.dart';
import 'package:green_tech/features/single_product_page.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  toggleIsExpanded(bool isExpanded) {
    isExpanded = !isExpanded;
    setState(() {});
  }

  bool yourAccount = true;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      drawer: customAppDrawer(yourAccount, toggleIsExpanded(yourAccount)),
      appBar: customAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Container(
                child: Center(
                  child: GridView.builder(
                      padding: EdgeInsets.all(5),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          //childAspectRatio: 3 / 2,
                          crossAxisSpacing: 10,
                          childAspectRatio: 0.9,
                          mainAxisSpacing: 10,
                          maxCrossAxisExtent: mq.height / 2.4),
                      itemCount: getProductsList().length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SingleProductPage()));
                          },
                          child: Material(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            elevation: 5,
                            color: Pallet.white,
                            child: Column(
                              //crossAxisAlignment:CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                    height: mq.height / 8,
                                    width: mq.width / 2.5,

                                    // child: Image.asset("login_bg".jpg, fit: BoxFit.fill,),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("login_bg".jpg),
                                            fit: BoxFit.cover),
                                        border: Border(
                                          bottom: BorderSide(
                                              width: 5.0,
                                              color: Pallet.primaryColor),
                                        ))),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 2),
                                  width: mq.width / 2.5,
                                  child: Text(getProductsList()[index].title,
                                      style: TextStyle(
                                          color: Pallet.textDark,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 2),
                                  width: mq.width / 2.5,
                                  child: Text(getProductsList()[index].subtitle,
                                      style: TextStyle(
                                          color: Pallet.textLight,
                                          fontSize: 12)),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 2),
                                  width: mq.width / 2.55,
                                  child: RatingBarIndicator(
                                    rating: getProductsList()[index].rating,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 16.0,
                                    direction: Axis.horizontal,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 2),
                                  width: mq.width / 2.5,
                                  child: Text(getProductsList()[index].amount,
                                      style: TextStyle(
                                          color: Pallet.textDark,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700)),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }

  List<ProductDataItem> getProductsList() {
    List<ProductDataItem> list = List<ProductDataItem>();
    list.add(ProductDataItem(
        image: "login_bg".jpg,
        amount: "\$45.50",
        title: "Black T-Shirt",
        rating: 5,
        subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(
        image: "login_bg".jpg,
        amount: "\$45.50",
        title: "Black T-Shirt",
        rating: 5,
        subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(
        image: "login_bg".jpg,
        amount: "\$45.50",
        title: "Black T-Shirt",
        rating: 5,
        subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(
        image: "login_bg".jpg,
        amount: "\$45.50",
        title: "Black T-Shirt",
        rating: 5,
        subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(
        image: "login_bg".jpg,
        amount: "\$45.50",
        title: "Black T-Shirt",
        rating: 5,
        subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(
        image: "login_bg".jpg,
        amount: "\$45.50",
        title: "Black T-Shirt",
        rating: 5,
        subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(
        image: "login_bg".jpg,
        amount: "\$45.50",
        title: "Black T-Shirt",
        rating: 5,
        subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(
        image: "login_bg".jpg,
        amount: "\$45.50",
        title: "Black T-Shirt",
        rating: 5,
        subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(
        image: "login_bg".jpg,
        amount: "\$45.50",
        title: "Black T-Shirt",
        rating: 5,
        subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(
        image: "login_bg".jpg,
        amount: "\$45.50",
        title: "Black T-Shirt",
        rating: 5,
        subtitle: "New SeasonT-Shirt"));
    return list;
  }
}

class ProductDataItem {
  final String image;
  final String title;
  final String subtitle;
  final String amount;
  final double rating;

  ProductDataItem(
      {this.image, this.title, this.subtitle, this.amount, this.rating});
}
