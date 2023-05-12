import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/image_widgets.dart';
import 'package:flutter_temel_widgets/my_counter_page.dart';
import 'package:flutter_temel_widgets/temel_buton_turleri.dart';

void main() {
  debugPrint('main metodu çalıştı');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('myapp metodu çalıştı');
    return MaterialApp(
      title: "My counter app",
      theme: ThemeData(primarySwatch: Colors.purple, textTheme: TextTheme(headline1: TextStyle(color: Colors.purple))),
      home: Scaffold(
        appBar: AppBar(title: Text('Image Ornekleri')),
        // body: ImageOrnekleri(),
        body: TemelButonlar(),
      ),
    );
  }
}
