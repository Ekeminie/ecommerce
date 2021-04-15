import 'package:flutter/material.dart';
import 'package:green_tech/core/exports.dart';
import 'package:green_tech/features/single_product_page.dart';


class SecondaryProductPage extends StatefulWidget {

  @override
  _SecondaryProductPageState createState() => _SecondaryProductPageState();
}

class _SecondaryProductPageState extends State<SecondaryProductPage> {
  toggleIsExpanded(bool isExpanded) {
    isExpanded = !isExpanded;
  }

  bool yourAccount = true;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Container(
                padding:EdgeInsets.all(15),
                child: Center(
                  child: GridView.builder(
                      padding: EdgeInsets.all(5),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        //childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          childAspectRatio: 0.9,
                          mainAxisSpacing: 20,
                          maxCrossAxisExtent: mq.height / 3.h),
                      itemCount: getProductsList.length,
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
                            child: Container(
                                height: mq.height / 8.h,
                                width: mq.width / 2.5.w,

                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0.0,
                                      bottom: 0.0,
                                      right: 0.0,
                                      child: Container(
                                          height: 30.h,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(color: Colors.black45),
                                          child: Row(
                                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(getProductsList[index].title,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.sp,
                                                        fontWeight: FontWeight.w700)),
                                              ),
                                              IconButton(padding: EdgeInsets.zero,
                                                icon: !getProductsList[index].isFavorite ?Icon(
                                                  Icons.favorite_border_outlined,
                                                  color: Colors.white,
                                                ):Icon(
                                                  Icons.favorite,
                                                  color:Colors.red,
                                                ),
                                                onPressed: () {
                                                  getProductsList[index].isFavorite = !getProductsList[index].isFavorite;
                                                  setState(() {});
                                                },
                                              ),
                                              Icon(Icons.more_vert,color:Colors.white)
                                            ],
                                          )
                                      ),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("login_bg".jpg),
                                      fit: BoxFit.cover),
                                  // border: Border(
                                  //   bottom: BorderSide(
                                  //       width: 5.0,
                                  //       color: Pallet.primaryColor),
                                  // )
                                ))
                          ),
                        );
                      }),
                ),
              ),
            ),
          )
        ],

    );
  }

  List<ProductDataItem> get getProductsList  {
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
  bool isFavorite;

  ProductDataItem(
      {this.image, this.title, this.subtitle, this.amount, this.rating, this.isFavorite
       = false});
}