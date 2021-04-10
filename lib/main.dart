import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'core/utils.dart';
import 'features/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Map<int, Color> color = {
    50: Color.fromRGBO(136, 14, 79, .1),
    100: Color.fromRGBO(136, 14, 79, .2),
    200: Color.fromRGBO(136, 14, 79, .3),
    300: Color.fromRGBO(136, 14, 79, .4),
    400: Color.fromRGBO(136, 14, 79, .5),
    500: Color.fromRGBO(136, 14, 79, .6),
    600: Color.fromRGBO(136, 14, 79, .7),
    700: Color.fromRGBO(136, 14, 79, .8),
    800: Color.fromRGBO(136, 14, 79, .9),
    900: Color.fromRGBO(136, 14, 79, 1),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Green Tech',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xff0AADC2, color),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(title: 'Green Tech'),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool yourAccount = true;

  bool sales, children, newArrivals, men, women = false;

  @override
  Widget build(BuildContext context) {
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
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                        accountEmail: Text("greentech@gmail.com",
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
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
                        title: Text('Account', style:TextStyle(fontSize:18, color: Colors.grey)),
                      );
                    },
                    body: Container(
                      width:double.infinity,
                      padding:EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Orders',style:TextStyle(fontSize:16, color: Colors.grey[500])),
                          SizedBox(
                            height: 10,
                          ),
                          Text('WishList',style:TextStyle(fontSize:16, color: Colors.grey[500])),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Recommendation',style:TextStyle(fontSize:16, color: Colors.grey[500]))
                          ,SizedBox(
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
                        title: Text('New Arrivals',style:TextStyle(fontSize:16, color: Colors.grey)),
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
                        title: Text('Sales',style:TextStyle(fontSize:16, color: Colors.grey)),
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
                        title: Text('Men',style:TextStyle(fontSize:16, color: Colors.grey)),
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
                        title: Text('Women',style:TextStyle(fontSize:16, color: Colors.grey)),
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
                        title: Text('Kids',style:TextStyle(fontSize:16, color: Colors.grey)),
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
        ),
        body: Opacity(
          opacity: 0.9,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                image: DecorationImage(
                    image: AssetImage("login_bg".jpg), fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    right: 0,
                    left: 0,
                    top: 70,
                    child: Text('Welcome to GreenTech App',
                        style: TextStyle(
                            color: Color(0xff0AADC2),
                            fontWeight: FontWeight.w700,
                            fontSize: 30)),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    top: 150,
                    child: buttons(),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 30,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: InkWell(
                          onTap: () {},
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Don't have an Account?",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              TextSpan(
                                  text: "  Sign Up",
                                  style: TextStyle(
                                      color: Color(0xff1C686D), fontSize: 18))
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   tooltip: 'Increment',
        //   child: Icon(Icons.add),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  Widget buttons() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(8),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(8),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        FlatButton(
          minWidth: double.infinity,
          padding: EdgeInsets.all(20),
          color: Color(0xff0AADC2),
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder:(_)=> HomePage()
            ));
          },
          child: Text("Login",
              style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
        SizedBox(
          height: 30,
        ),
        FlatButton(
          minWidth: double.infinity,
          padding: EdgeInsets.all(20),
          color: Colors.blue[500],
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          onPressed: () {},
          child: Text("Facebook Login",
              style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
      ],
    );
  }
}
