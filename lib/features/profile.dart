import 'package:flutter/material.dart';
import 'package:green_tech/core/exports.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>  with SingleTickerProviderStateMixin{

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


  toggleIsExpanded(bool isExpanded) {
    isExpanded = !isExpanded;
    setState(() {});
  }

  bool yourAccount = true;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[200],
            drawer: customAppDrawer(context,yourAccount, toggleIsExpanded(yourAccount)),
            appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.white),
                title: Text("Profile",style:TextStyle(color:Colors.white)),
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
                    padding:EdgeInsets.all(10),
                    width: double.infinity,
                      height: mq.height / 6.h,
                      decoration: BoxDecoration(
                        color:Pallet.primaryColor
                          // image: DecorationImage(
                          //     image: AssetImage("login_bg".jpg),
                          //     fit: BoxFit.cover)
                      ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("login_bg".jpg,),
                      radius: 14,
                    ),
                  ),
                  preferredSize: Size.fromHeight(mq.height / 5),
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
                      children: [ProfileScreen(),ProfileScreen(),ProfileScreen(),],
                    ),
                  )
                ],
              ),
            )));
  }
}





















class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          child: Column(
            children: [
              singleListItem(title: "Name", subTitle: "Edwain Damain"),
              singleListItem(title: "Password", subTitle: "**************"),
              singleListItem(title: "Phone", subTitle: "+ 234 9021 1234 32",  hasTrailingIcon:false),
              singleListItem(title: "Email", subTitle: "edwindamain@gmail.com", hasTrailingIcon:false),
              singleListItem(title: "Status", subTitle: "Active", hasTrailingIcon:false),
              singleListItem(title: "Watching", subtitle: watchingSubtitle(), hasTrailingIcon:false),
            ],
          ),
        ),
      ),
    );
  }


  Widget singleListItem({String title, String subTitle, bool hasTrailingIcon = true, Widget subtitle}){
    return Container(
      margin:EdgeInsets.all(5),
      child: Material(
        elevation:3,
        color:Colors.white,
        child: ListTile(
            title:Text(title??"Test",style:TextStyle(color:Pallet.textLight, fontSize:14.sp, fontWeight: FontWeight.w500)),
            subtitle: (subtitle!=null)?subtitle:Text(subTitle??"Another Test",style:TextStyle(color:Pallet.textDark, fontSize:18.sp, fontWeight: FontWeight.w700)),
            trailing: hasTrailingIcon? Icon(Icons.edit):SizedBox.shrink()
        ),
      ),
    );
  }


  Widget watchingSubtitle(){
    return Container(
      width:double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: watchingArray.map((e) => Text(e,style:TextStyle(color:Pallet.textDark,
            fontSize:18, fontWeight: FontWeight.w700))).toList(
        ),
      ),
    );
  }
}
