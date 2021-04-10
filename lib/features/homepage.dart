import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_tech/core/utils.dart';
import 'package:green_tech/features/products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool yourAccount = true;
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }

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
              title: Text("GreenTech",style:TextStyle(color:Colors.white)),
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
                child: Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        height: mq.height / 3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("login_bg".jpg),
                                fit: BoxFit.cover))),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      right: 0.0,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(color: Colors.black45),
                        child: Center(
                            child: Text("2015 New Fashion Women",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700))),
                      ),
                    )
                  ],
                ),
                preferredSize: Size.fromHeight(mq.height / 3),
              )),
          body: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                TabBar(indicatorWeight: 5,
                  controller: controller,
                  indicatorColor: Color(0xff0AADC2),
                  tabs: [
                    Tab(
                      text: "Men",
                    ),
                    Tab(
                      text: "Women",
                    ),
                    Tab(
                      text: "Boys",
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: controller,
                    children: [TabNew(), TabNew(), TabNew()],
                  ),
                )
              ],
            ),
          )),
    );
  }

}




class TabNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          child: Column(
            children: [
             ListTile(
               contentPadding: EdgeInsets.symmetric(horizontal: 40),
               title:Text("SHOE"),
               trailing: Image.asset("login_bg".jpg),
             ),SizedBox(
                  child: Center(
                    child: Divider(),
                  ),
                  height: 10),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder:(_)=> ProductsPage()
                  ));
                },
                contentPadding: EdgeInsets.symmetric(horizontal: 40),
                title:Text("JEANS"),
                trailing: Image.asset("login_bg".jpg),
              ),
              SizedBox(
                  child: Center(
                    child: Divider(),
                  ),
                  height: 10),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 40),
                title:Text("SUIT"),
                trailing: Image.asset("login_bg".jpg),
              ),
              SizedBox(
                  child: Center(
                    child: Divider(),
                  ),
                  height: 10),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 40),
                title:Text("T-SHIRTS"),
                trailing: Image.asset("login_bg".jpg),
              ),
              SizedBox(
                  child: Center(
                    child: Divider(),
                  ),
                  height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
