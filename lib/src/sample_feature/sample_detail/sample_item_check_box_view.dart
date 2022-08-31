import 'package:flutter/material.dart';
import 'package:Flutter_template/src/utils/urls.dart';

class SampleItemCheckBoxView extends StatefulWidget {
  const SampleItemCheckBoxView({Key? key}) : super(key: key);

  static const routeName = '/sample_item_check_box';

  @override
  State<SampleItemCheckBoxView> createState() => _SampleItemCheckBoxViewState();
}

class _SampleItemCheckBoxViewState extends State<SampleItemCheckBoxView> {
  static const referenceUri =
      'https://api.flutter.dev/flutter/material/Checkbox-class.html';
  bool isChecked = false;
  String checkboxLabel = "チェックボックスは未選択の状態です";

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('CheckBox'),
        ),
        body: Column(children: <Widget>[
          const Spacer(),
          ElevatedButton(
            child: const Text('公式リファレンスを開く'),
            onPressed: () =>
                Urls.openUrl(referenceUri: referenceUri, isExternal: true),
          ),
          Row(
            children: <Widget>[
              Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith(getColor),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                    checkboxLabel = "$valueの状態に遷移しました。";
                  });
                },
              ),
              Text(checkboxLabel),
            ],
          ),
          const Spacer(),
        ]));
  }
}
