import 'package:flutter/material.dart';
import 'package:Flutter_template/src/utils/urls.dart';

class SampleItemImageView extends StatefulWidget {
  const SampleItemImageView({Key? key}) : super(key: key);

  static const routeName = '/sample_item_image';

  @override
  State<SampleItemImageView> createState() => _SampleItemImageViewState();
}

class _SampleItemImageViewState extends State<SampleItemImageView> {
  static const referenceUri =
      'https://api.flutter.dev/flutter/painting/AssetImage-class.html';

  List<String> images = [
    "assets/images/neko.jpeg",
    "assets/images/shiba.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image'),
        ),
        body: Center(
            child: Column(children: <Widget>[
          ElevatedButton(
            child: const Text('公式リファレンスを開く'),
            onPressed: () =>
                Urls.openUrl(referenceUri: referenceUri, isExternal: true),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.scaleDown,
                      image: AssetImage(images[index]),
                    ),
                  ),
                );
              }),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/datyou.jpg'),
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 0.7, 0.95],
                  colors: [
                    Colors.black12,
                    Colors.black54,
                    Colors.black87,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 30, bottom: 20),
                    alignment: Alignment.topRight,
                    child: const Text('ダチョウの写真タイトル',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 60, left: 20, bottom: 60),
                    alignment: Alignment.bottomLeft,
                    child: const Text('写真の説明文。写真の説明文。写真の説明文。',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                            color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ])));
  }
}
