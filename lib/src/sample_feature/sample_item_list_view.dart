import 'package:flutter/material.dart';
import 'package:Flutter_template/src/const/sample_feature/pages_const.dart';
import '../enum/sample_feature/pages_enum.dart';

class SampleItemListView extends StatelessWidget {
  const SampleItemListView({
    Key? key,
  }) : super(key: key);

  static const routeName = '/list';

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
      // contents部分にリストビューを表示
      body: ListView.builder(
        restorationId: 'sampleItemListView',
        shrinkWrap: true,
        itemCount: PagesConst.pages.length,
        itemBuilder: (BuildContext context, int index) {
          final Pages item = PagesConst.pages[index];

          // リストタイルで表示する
          return ListTile(
              title: Text(item.type.name),
              // 丸いアイコンで表示
              leading: const CircleAvatar(
                // アイコンで利用する画像ファイルをパス指定
                foregroundImage: AssetImage('assets/images/flutter_logo.png'),
              ),
              // 対象のタイルが選択された時の動作を指定
              onTap: () {
                Navigator.restorablePushNamed(
                  context,
                  item.type.routeName,
                );
              });
        },
      ),
      // bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
