import 'package:flutter/material.dart';
import 'package:green_tech/core/utils.dart';

Drawer customAppDrawer(bool yourAccount, VoidCallback function){
  return Drawer(
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
                  onTap:function,
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
  );
}