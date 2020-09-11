import 'package:flutter/material.dart';
import 'package:to_do/Model/product_model.dart';
import 'package:to_do/Product/product_details.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do/Screens/add_task.dart';

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
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('Item 1'),
                onTap: () {
                  print('Item 1');
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
        return ProductCard(
          myIcon: productList[index].myIcon,
          no: productList[index].no,
          heading: productList[index].heading,
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
