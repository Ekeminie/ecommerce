import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:green_tech/core/pallet.dart';
import "package:green_tech/core/utils.dart";

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  bool yourAccount =true;
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: ListView(
                      children: [
                        UserAccountsDrawerHeader(
                            accountName: Text("Earvin Dain",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white)),
                            accountEmail: Text("greentech@gmail.com",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white)),
                            currentAccountPicture: CircleAvatar(
                              radius: 50.0,
                              backgroundImage: AssetImage("login_bg".jpg),
                            )),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff0AADC2),
                    ),
                  ),
                  ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded) {},
                    children: [
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            onTap: () {
                              yourAccount = !yourAccount;
                              setState(() {});
                            },
                            title: Text('Account',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey)),
                          );
                        },
                        body: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Orders',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey[500])),
                              SizedBox(
                                height: 10,
                              ),
                              Text('WishList',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey[500])),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Recommendation',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey[500])),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        isExpanded: yourAccount,
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text('New Arrivals',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                          );
                        },
                        body: ListTile(
                          title: Text('Item 2 child'),
                          subtitle: Text('Details goes here'),
                        ),
                        isExpanded: false,
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text('Sales',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                          );
                        },
                        body: ListTile(
                          title: Text('Item 2 child'),
                          subtitle: Text('Details goes here'),
                        ),
                        isExpanded: false,
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text('Men',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                          );
                        },
                        body: ListTile(
                          title: Text('Item 2 child'),
                          subtitle: Text('Details goes here'),
                        ),
                        isExpanded: false,
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text('Women',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                          );
                        },
                        body: ListTile(
                          title: Text('Item 2 child'),
                          subtitle: Text('Details goes here'),
                        ),
                        isExpanded: false,
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text('Kids',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                          );
                        },
                        body: ListTile(
                          title: Text('Item 2 child'),
                          subtitle: Text('Details goes here'),
                        ),
                        isExpanded: false,
                      )
                    ],
                  ),
                ],
              ),
            ),
            appBar: AppBar(
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
                bottom: PreferredSize(
                  child: Container(
                    height: mq.height/17,
                  ),
                  preferredSize: Size.fromHeight(mq.height / 15),
                )
            ),

        body: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  child: Center(
                    child: GridView.builder(padding:EdgeInsets.all(5),gridDelegate:
                    SliverGridDelegateWithMaxCrossAxisExtent(
                        //childAspectRatio: 3 / 2,
                        crossAxisSpacing: 10,childAspectRatio: 0.9,
                        mainAxisSpacing: 10, maxCrossAxisExtent: mq.height/2.4),
                        itemCount: getProductsList().length, itemBuilder: (context, index){
                          return InkWell(
                            onTap: (){

                            },
                            child: Material(
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0)),
                              elevation:5,
                              color: Pallet.white,
                              child: Column(
                                //crossAxisAlignment:CrossAxisAlignment.start,
                                mainAxisSize:MainAxisSize.min,
                                children: [
                                  Container(
                                      height: mq.height/8,
                                      width: mq.width/2.5,

                                     // child: Image.asset("login_bg".jpg, fit: BoxFit.fill,),
                                      decoration:BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("login_bg".jpg), fit: BoxFit.cover),
                                          border: Border(
                                            bottom: BorderSide(width: 5.0, color: Pallet.primaryColor),)
                                      )
                                  ),
                                   Container(
                                     padding:EdgeInsets.symmetric(vertical: 2),
                                     width: mq.width/2.5,
                                     child: Text(getProductsList()[index].title, style:TextStyle(color: Pallet.textDark, fontSize:16, fontWeight: FontWeight.w500)),
                                   ),
                                  Container(
                                    padding:EdgeInsets.symmetric(vertical: 2),
                                    width: mq.width/2.5,
                                    child: Text(getProductsList()[index].subtitle, style:TextStyle(color: Pallet.textLight,fontSize:12)),
                                  ),
                                  Container(
                                    padding:EdgeInsets.symmetric(vertical: 2),
                                    width: mq.width/2.55,
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
                                    padding:EdgeInsets.symmetric(vertical: 2),
                                    width: mq.width/2.5,
                                    child: Text(getProductsList()[index].amount, style:TextStyle(color: Pallet.textDark, fontSize:14, fontWeight: FontWeight.w700)),
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
        ),));
  }




  List<ProductDataItem>getProductsList(){
    List<ProductDataItem> list = List<ProductDataItem>();
    list.add(ProductDataItem(image: "login_bg".jpg, amount: "\$45.50",title: "Black T-Shirt",rating: 5,subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(image: "login_bg".jpg, amount: "\$45.50",title: "Black T-Shirt",rating: 5,subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(image: "login_bg".jpg, amount: "\$45.50",title: "Black T-Shirt",rating: 5,subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(image: "login_bg".jpg, amount: "\$45.50",title: "Black T-Shirt",rating: 5,subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(image: "login_bg".jpg, amount: "\$45.50",title: "Black T-Shirt",rating: 5,subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(image: "login_bg".jpg, amount: "\$45.50",title: "Black T-Shirt",rating: 5,subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(image: "login_bg".jpg, amount: "\$45.50",title: "Black T-Shirt",rating: 5,subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(image: "login_bg".jpg, amount: "\$45.50",title: "Black T-Shirt",rating: 5,subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(image: "login_bg".jpg, amount: "\$45.50",title: "Black T-Shirt",rating: 5,subtitle: "New SeasonT-Shirt"));
    list.add(ProductDataItem(image: "login_bg".jpg, amount: "\$45.50",title: "Black T-Shirt",rating: 5,subtitle: "New SeasonT-Shirt"));
    return list;
  }
}

class ProductDataItem{
  final String image;
  final String title;
  final String subtitle;
  final String amount;
  final double rating;
  ProductDataItem({this.image, this.title,this.subtitle, this.amount,this.rating});
}
