import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DropdownButtonKullanimi extends StatefulWidget {
  const DropdownButtonKullanimi({super.key});

  @override
  State<DropdownButtonKullanimi> createState() => _DropdownButtonKullanimiState();
}

class _DropdownButtonKullanimiState extends State<DropdownButtonKullanimi> {
  String? _secilenSehir = null;

  List<String> _tumSehirler = ['Ankara', 'Balıkesir', 'Çanakkale', 'Zonguldak'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text('Seçiniz'),
        // items: [
        //   DropdownMenuItem(child: Text('Ankara Şehri'), value: 'Ankara'),
        //   DropdownMenuItem(child: Text('Balıkesir Şehri'), value: 'Balıkesir'),
        //   DropdownMenuItem(child: Text('Çanakkale Şehri'), value: 'Çanakkale')
        // ],
        items: _tumSehirler
            .map((String item) => DropdownMenuItem(
                  child: Text(item),
                  value: item,
                ))
            .toList(),
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            print("Seçilen: $yeni");
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}
