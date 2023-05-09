import 'package:flutter/material.dart';

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
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
 int _sayac = 0;
  @override
  Widget build(BuildContext context) {
    debugPrint('myhomepage metodu çalıştı');
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter Zort'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Butona basılma sayısı',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            _sayac.toString(),
            '0',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('buton metodu çalıştı');
            sayaciArttır();
          },
          child: Icon(Icons.add)),
    );
  }
  
  void sayaciArttır() {}
}
