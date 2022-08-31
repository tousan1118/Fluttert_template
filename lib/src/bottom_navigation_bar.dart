import 'package:flutter/material.dart';
import 'package:Flutter_template/src/sample_login/login_view.dart';
import 'settings/settings_controller.dart';
import 'sample_feature/sample_item_list_view.dart';
import 'settings/settings_view.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key, required this.settingsController})
      : super(key: key);

  static const routeName = '/';

  final SettingsController settingsController;

  @override
  State<BottomNavigationBarWidget> createState() =>
      BottomNavigationBarWidgetState();
}

class BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      const LoginView(),
      const SampleItemListView(),
      SettingsView(controller: widget.settingsController),
    ];

    return Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.key), label: 'ログイン'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '一覧'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
          ],
          type: BottomNavigationBarType.fixed,
        ));
  }
}
