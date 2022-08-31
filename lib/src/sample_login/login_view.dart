import 'package:flutter/material.dart';
import 'package:Flutter_template/src/const/sample_feature/pages_const.dart';
import 'package:Flutter_template/src/sample_feature/sample_item_list_view.dart';
import 'package:Flutter_template/src/utils/urls.dart';

import '../enum/sample_feature/pages_enum.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  static const routeName = '/sample_login';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _isObscure = true;

  final _formkey = GlobalKey<FormState>();

  static const referenceUri =
      'https://docs.flutter.dev/cookbook/forms/validation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView.builder(
          itemCount: PagesConst.pages.length,
          itemBuilder: (BuildContext context, int index) {
            final Pages item = PagesConst.pages[index];

            return ListTile(
                title: Text(item.type.name),
                onTap: () {
                  Navigator.restorablePushNamed(
                    context,
                    item.type.routeName,
                  );
                });
          },
        ),
      ),
      appBar: AppBar(
        title: const Text('Flutter Sample Modules'),
        actions: [
          IconButton(
            icon: const Icon(Icons.doorbell_rounded),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('actionボタンが押されました。')),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: <Widget>[
            ElevatedButton(
              child: const Text('公式リファレンスを開く'),
              onPressed: () =>
                  Urls.openUrl(referenceUri: referenceUri, isExternal: true),
            ),
            Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'ユーザー名を入力してください',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'ユーザー名を入力してください';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          labelText: 'パスワードを入力してください',
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              })),
                      validator: ((value) {
                        if (value == null || value.isEmpty) {
                          return 'パスワードが入力されていません';
                        }
                        return null;
                      }),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('ログインに成功しました。')),
                            );
                            Navigator.restorablePushNamed(
                              context,
                              SampleItemListView.routeName,
                            );
                          }
                        },
                        child: const Text('ログイン')),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
