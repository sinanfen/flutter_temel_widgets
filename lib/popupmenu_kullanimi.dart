import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PopupMenuKullanimi extends StatefulWidget {
  const PopupMenuKullanimi({super.key});

  @override
  State<PopupMenuKullanimi> createState() => _PopupMenuKullanimiState();
}

class _PopupMenuKullanimiState extends State<PopupMenuKullanimi> {
  String _secilenSehir = 'Ankara';
  List<String> renkler = ['mavi', 'yeşil', 'sarı', 'kırmızı'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          print('Seçilen: $sehir');
          setState(() {
            _secilenSehir = sehir;
          });
        },
        // child: Text(_secilenSehir),
        itemBuilder: (BuildContext context) {
          // return <PopupMenuEntry<String>>[
          //   PopupMenuItem(
          //     child: Text('Ankara'),
          //     value: 'Ankara',
          //   ),
          //   PopupMenuItem(
          //     child: Text('Bursa'),
          //     value: 'Bursa',
          //   ),
          //   PopupMenuItem(
          //     child: Text('Konya'),
          //     value: 'Konya',
          //   )
          // ];
          return renkler
              .map((renk) => PopupMenuItem(
                    child: Text(renk),
                    value: renk,
                  ))
              .toList();
        },
      ),
    );
  }
}
