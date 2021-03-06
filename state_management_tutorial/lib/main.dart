import 'package:flutter/material.dart';
import 'package:state_management_tutorial/post_screen.dart';
import 'package:state_management_tutorial/post_view_model.dart';
import 'package:state_management_tutorial/second_page.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterModel()),
        ChangeNotifierProvider(create: (context) => PostViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:PostScreen(),
      ),
    );
  }
}


