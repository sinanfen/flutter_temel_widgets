import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
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
          MyNewTextWidget(),
          Text(
            _sayac.toString(),
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('butona tıklandı ve sayac değeri: $_sayac');
            sayaciArttir();
          },
          child: Icon(Icons.add)),
    );
  }

  void sayaciArttir() {
    setState(() {});
    _sayac++;
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Butona basılma sayısı',
      style: Theme.of(context).textTheme.headlineSmall,
      // style: TextStyle(fontSize: 24),
    );
  }
}
