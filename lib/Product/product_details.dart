import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final IconData myIcon;
  final heading;
  final no;
  final cardSize = 162.0;
  ProductCard(
      {@required this.myIcon, @required this.heading, @required this.no});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        height: cardSize,
        width: cardSize,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
              blurRadius: 5.0,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              myIcon,
              size: 40,
              color: Colors.blue,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '$no Tasks',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
