import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
              color: Colors.purple.shade100,
              child: Image.asset('assets/images/Screenshot_1.png')),
          Container(
            width: 75,
            height: 75,
            child: CircleAvatar(
              child: Text('Deneme'),
            ),
          )
        ],
      ),
    );
  }
}
