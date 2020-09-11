import 'package:flutter/material.dart';
import 'package:to_do/Home/home_page.dart';
import 'package:to_do/Screens/add_task.dart';
import 'package:to_do/Screens/product_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do List',
      home: HomePage(),
      routes: {
        ProductInformation.productInfoRoute: (context) => ProductInformation(),
        AddTask.addTaskRoute: (context) => AddTask(),
      },
    );
  }
}
