import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _kennyImgURL =
        "https://static.wikia.nocookie.net/southpark/images/6/6f/KennyMcCormick.png/revision/latest?cb=20160409020502";
    String _stanImgURL = "https://pngimg.com/d/south_park_PNG30.png";
    String _wendyImgURL =
        "https://assets.stickpng.com/images/587170697b7f6103e35c6cb1.png";
    return Center(
        child: Column(children: [
      IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                  child: Image.network(
                _stanImgURL,
                fit: BoxFit.cover,
              )),
            ),
            Expanded(
                child: Container(
              child: Image.network(
                _kennyImgURL,
                fit: BoxFit.cover,
              ),
            )),
            Expanded(
              child: Container(
                  child: Image.network(
                _wendyImgURL,
                fit: BoxFit.cover,
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Container(
          width: 200,
          child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif', image: _stanImgURL),
        ),
      ),
      Expanded(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Placeholder(),
      )),
    ]));
  }
}
