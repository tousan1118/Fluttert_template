import 'package:flutter/material.dart';
import 'package:Flutter_template/src/utils/urls.dart';

enum SingingCharacter { php, dart, java, kotlin }

class SampleItemRadioListTileView extends StatefulWidget {
  const SampleItemRadioListTileView({Key? key}) : super(key: key);

  static const routeName = '/sample_item_radio';

  @override
  State<SampleItemRadioListTileView> createState() =>
      _SampleItemRadioListTileViewState();
}

class _SampleItemRadioListTileViewState
    extends State<SampleItemRadioListTileView> {
  static const referenceUri =
      'https://api.flutter.dev/flutter/material/RadioListTile-class.html';
  SingingCharacter? _character = SingingCharacter.php;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Radio List Tile'),
        ),
        body: Column(children: <Widget>[
          ElevatedButton(
            child: const Text('公式リファレンスを開く'),
            onPressed: () =>
                Urls.openUrl(referenceUri: referenceUri, isExternal: true),
          ),
          RadioListTile<SingingCharacter>(
            title: const Text('PHP'),
            value: SingingCharacter.php,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          RadioListTile<SingingCharacter>(
            title: const Text('Dart'),
            value: SingingCharacter.dart,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          RadioListTile<SingingCharacter>(
            title: const Text('Java'),
            value: SingingCharacter.java,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          RadioListTile<SingingCharacter>(
            title: const Text('Kotlin'),
            value: SingingCharacter.kotlin,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ]));
  }
}
