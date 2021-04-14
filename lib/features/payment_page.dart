import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:green_tech/core/pallet.dart';
import 'package:green_tech/core/widgets/custom_appbar.dart';
import 'package:green_tech/core/widgets/custom_drawer.dart';
import 'package:green_tech/core/utils.dart';
import 'package:green_tech/core/widgets/responsive_text.dart';
import 'package:green_tech/features/payment_page.dart';
import 'package:green_tech/features/payment_tab_page.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage>with SingleTickerProviderStateMixin  {
  toggleIsExpanded(bool isExpanded) {
    isExpanded = !isExpanded;
    setState(() {});
  }

  bool yourAccount = true;
  bool isFavorite = false;
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          drawer: customAppDrawer(context,yourAccount, toggleIsExpanded(yourAccount)),
          appBar: customAppBar(context, title:"Payment"),
          body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              padding: EdgeInsets.all(10),
              child: DefaultTabController(length: 3,
                child: Column(
                  mainAxisSize:MainAxisSize.min,
                  children: [
                    TabBar(indicatorWeight: 5,
                      controller: controller,
                      indicatorColor: Color(0xff0AADC2),
                      tabs: [
                        Tab(
                          text: "Credit Card",
                        ),
                        Tab(
                          text: "XYZ Card",
                        ),
                        Tab(
                          text: "Bank Card",
                        ),
                      ],
                    ),

                    Expanded(
                      child:TabBarView(
                        controller: controller,
                        children: [PaymentScreen(), PaymentScreen(), PaymentScreen()],
                      ),
                    )
                  ],
                ),
              ),
            );
          })),
    );
  }
}
