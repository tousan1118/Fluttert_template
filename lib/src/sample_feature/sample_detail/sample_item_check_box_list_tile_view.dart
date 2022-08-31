import 'package:flutter/material.dart';
import 'package:Flutter_template/src/utils/urls.dart';

class SampleItemCheckBoxListTileView extends StatefulWidget {
  const SampleItemCheckBoxListTileView({Key? key}) : super(key: key);

  static const routeName = '/sample_item_check_box_tile';

  @override
  State<SampleItemCheckBoxListTileView> createState() =>
      _SampleItemCheckBoxListTileViewState();
}

class _SampleItemCheckBoxListTileViewState
    extends State<SampleItemCheckBoxListTileView> {
  static const referenceUri =
      'https://api.flutter.dev/flutter/material/CheckboxListTile-class.html';
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CheckBox List Tile'),
        ),
        body: Column(children: <Widget>[
          const Spacer(),
          ElevatedButton(
            child: const Text('公式リファレンスを開く'),
            onPressed: () =>
                Urls.openUrl(referenceUri: referenceUri, isExternal: true),
          ),
          CheckboxListTile(
            title: const Text('CheckBox用のラベル'),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          const Spacer(),
        ]));
  }
}
