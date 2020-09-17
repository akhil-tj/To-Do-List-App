import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  List catList = [
    'Business',
    'Travel',
    'Music',
    'Study',
    'Shopping',
    'Home',
    'Urgent',
    'Fun',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select a category',
                  style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                //catGridViewBuilder(),
                //catListViewBuilder(),
                //catGridViewCount()
              ],
            ),
          ),
        ),
      ),
    );
  }

  GridView catGridViewCount() {
    return GridView.count(
      // crossAxisSpacing: 0,
      // mainAxisSpacing: 0,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate(catList.length, (index) {
        return GestureDetector(
          onTap: () {},
          child: FilterChip(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
              disabledColor: Colors.blue,
              selectedColor: Colors.white,
              shape: StadiumBorder(
                side: BorderSide(color: Colors.white12, width: 1.5),
              ),
              label: Text(
                catList[index],
                style: TextStyle(fontSize: 20, color: Colors.white70),
              ),
              onSelected: null),
        );
      }),
    );
  }

  ListView catListViewBuilder() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: (catList.length / 2).round(),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                FilterChip(
                    padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                    disabledColor: Colors.blue,
                    selectedColor: Colors.white,
                    shape: StadiumBorder(
                      side: BorderSide(color: Colors.white12, width: 1.5),
                    ),
                    label: Text(
                      catList[index],
                      style: TextStyle(fontSize: 20, color: Colors.white70),
                    ),
                    onSelected: null),
                SizedBox(
                  width: 16,
                ),
                FilterChip(
                    padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                    disabledColor: Colors.blue,
                    selectedColor: Colors.white,
                    shape: StadiumBorder(
                      side: BorderSide(color: Colors.white12, width: 1.5),
                    ),
                    label: Text(
                      catList[index + 1],
                      style: TextStyle(fontSize: 20, color: Colors.white70),
                    ),
                    onSelected: null),
              ],
            ),
          ],
        );
      },
    );
  }

  GridView catGridViewBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: catList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child: FilterChip(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
              disabledColor: Colors.blue,
              selectedColor: Colors.white,
              shape: StadiumBorder(
                side: BorderSide(color: Colors.white12, width: 1.5),
              ),
              label: Text(
                catList[index],
                style: TextStyle(fontSize: 20, color: Colors.white70),
              ),
              onSelected: null),
        );
      },
    );
  }
}
