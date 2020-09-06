import 'package:flutter/material.dart';
import 'package:to_do/Product/product_details.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Add(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: FaIcon(
                  FontAwesomeIcons.bars,
                  size: 32,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Lists',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 38),
                ),
              ),
              gridBuilder(),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }

  GridView gridBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 8,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return ProductCard(
          myIcon: FontAwesomeIcons.bars,
          no: 24,
          heading: 'All',
        );
      },
    );
  }
}

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.blue,
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 32,
      ),
    );
  }
}
