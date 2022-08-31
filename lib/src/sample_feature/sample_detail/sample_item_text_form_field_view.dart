import 'package:flutter/material.dart';
import 'package:Flutter_template/src/utils/urls.dart';

class SampleItemTextFormFieldView extends StatelessWidget {
  const SampleItemTextFormFieldView({Key? key}) : super(key: key);

  static const routeName = '/sample_item_text_form_field';
  static const referenceUri =
      'https://api.flutter.dev/flutter/material/TextFormField-class.html';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TextFormField'),
        ),
        body: Column(children: <Widget>[
          const Spacer(),
          ElevatedButton(
            child: const Text('公式リファレンスを開く'),
            onPressed: () =>
                Urls.openUrl(referenceUri: referenceUri, isExternal: true),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'あなたの氏名を教えてください',
              labelText: '氏名 *',
            ),
            //
            onSaved: (String? value) {},
            validator: (String? value) {
              return (value != null && value.contains('@')) ? '@は使えません。' : null;
            },
          ),
          const Spacer(),
        ]));
  }
}
