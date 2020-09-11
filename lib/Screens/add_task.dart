import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  static const addTaskRoute = '/addTask';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    NewTaskAppBar(),
                    SizedBox(
                      height: 24,
                    ),
                    TextField(
                      maxLength: 20,
                      decoration: InputDecoration(
                        labelText: 'What are you planning ?',
                        labelStyle: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      maxLength: 50,
                      decoration: InputDecoration(
                        labelText: 'Add note',
                        labelStyle: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Category');
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_box,
                            size: 21,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Category',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Create',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.75,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewTaskAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 16,
        ),
        Text(
          'New task',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(FeatherIcons.x),
        )
      ],
    );
  }
}
