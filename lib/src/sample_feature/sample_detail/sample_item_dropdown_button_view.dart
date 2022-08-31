import 'package:flutter/material.dart';
import 'package:Flutter_template/src/utils/urls.dart';

class SampleItemDropdownButtonView extends StatefulWidget {
  const SampleItemDropdownButtonView({Key? key}) : super(key: key);

  static const routeName = '/sample_item_dropdown_button';

  @override
  State<SampleItemDropdownButtonView> createState() =>
      _SampleItemDropdownButtonViewState();
}

class _SampleItemDropdownButtonViewState
    extends State<SampleItemDropdownButtonView> {
  static const referenceUri =
      'https://api.flutter.dev/flutter/material/DropdownButton-class.html';

  String dropdownValue = '';
  List<String> values = ['Flutter', 'Vue', 'Nuxt', 'React'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dropdown Button'),
        ),
        body: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ElevatedButton(
            child: const Text('公式リファレンスを開く'),
            onPressed: () =>
                Urls.openUrl(referenceUri: referenceUri, isExternal: true),
          ),
          DropdownButton<String>(
            value: values[0],
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple, fontSize: 18.0),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: values.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )
        ])));
  }
}
