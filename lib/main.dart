import 'package:flutter/material.dart';import 'package:green_tech/core/exports.dart';

import 'features/login_page.dart';

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
    Size size = MediaQuery.of(context).size;
    print("Screen Sizing Information");
    print(size.height);
    print(size.width);
    ScreenUtil.init(context, designSize: Size(392, 834));
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

