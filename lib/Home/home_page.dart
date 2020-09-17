import 'package:flutter/material.dart';
import 'package:to_do/Model/product_model.dart';
import 'package:to_do/Product/product_details.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do/Screens/add_task.dart';
import 'package:to_do/Screens/product_info.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final List<ProductDataModel> productList = [
    ProductDataModel(myIcon: FeatherIcons.clipboard, heading: 'All', no: 24),
    ProductDataModel(
        myIcon: FeatherIcons.dollarSign, heading: 'Business', no: 8),
    ProductDataModel(myIcon: FeatherIcons.anchor, heading: 'Travel', no: 1),
    ProductDataModel(myIcon: FeatherIcons.music, heading: 'Music', no: 7),
    ProductDataModel(myIcon: FeatherIcons.book, heading: 'Study', no: 3),
    ProductDataModel(
        myIcon: FeatherIcons.checkSquare, heading: 'Urgent', no: 15),
    ProductDataModel(myIcon: FeatherIcons.film, heading: 'Fun', no: 3),
    ProductDataModel(
        myIcon: FeatherIcons.shoppingCart, heading: 'Shopping', no: 9),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 12.0,
                    left: 16.0,
                    child: Text(
                      "Hello there,",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
                leading: Icon(Icons.add_box),
                title: Text('Add Task'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, AddTask.addTaskRoute);
                }),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  print('Settings');
                }),
            ListTile(
                leading: Icon(Icons.sms_failed),
                title: Text('Send Feedback'),
                onTap: () {
                  print('Send Feedback');
                }),
            ListTile(
                leading: Icon(Icons.star),
                title: Text('Rate Us'),
                onTap: () {
                  print('Rate Us');
                }),
            ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text('Exit'),
                onTap: () {
                  print('Exit');
                }),
          ],
        ),
      ),
      floatingActionButton: Add(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      _drawerKey.currentState.openDrawer();
                    },
                    child: Container(
                      height: 34,
                      width: 34,
                      child: SvgPicture.asset(
                        'assets/icons/notes.svg',
                        color: Colors.black87,
                        semanticsLabel: 'menu icon',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Lists',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                gridBuilder(),
                SizedBox(
                  height: 16,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  GridView gridBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Map arguments = {
              'myIcon': productList[index].myIcon,
              'heading': productList[index].heading,
              'no': productList[index].no
            };
            Navigator.pushNamed(context, ProductInformation.productInfoRoute,
                arguments: arguments);
          },
          child: ProductCard(
            myIcon: productList[index].myIcon,
            no: productList[index].no,
            heading: productList[index].heading,
          ),
        );
      },
    );
  }
}

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AddTask.addTaskRoute);
      },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}
