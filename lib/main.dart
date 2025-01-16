import 'package:flutter/material.dart';
import 'package:kind_sprout/locator.dart';
import 'package:kind_sprout/views/layout_template/layout_template.dart';
import 'views/home/home_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      home: LayoutTemplate(
        child: HomeView(),
      ),
    );
  }
}
