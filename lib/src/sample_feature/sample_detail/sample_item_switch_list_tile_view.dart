import 'package:flutter/material.dart';
import 'package:Flutter_template/src/utils/urls.dart';

class SampleItemSwitchListTileView extends StatefulWidget {
  const SampleItemSwitchListTileView({Key? key}) : super(key: key);

  static const routeName = '/sample_item_switch_list_tile';

  @override
  State<SampleItemSwitchListTileView> createState() =>
      _SampleItemRadioListTileViewState();
}

class _SampleItemRadioListTileViewState
    extends State<SampleItemSwitchListTileView> {
  static const referenceUri =
      'https://api.flutter.dev/flutter/material/SwitchListTile-class.html';

  bool _lights = false;

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
          SwitchListTile(
            title: const Text('Lights'),
            value: _lights,
            onChanged: (bool value) {
              setState(() {
                _lights = value;
              });
            },
            secondary: const Icon(Icons.lightbulb_outline),
          )
        ]));
  }
}
