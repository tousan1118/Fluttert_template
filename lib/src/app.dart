import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:Flutter_template/src/bottom_navigation_bar.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_card_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_check_box_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_check_box_list_tile_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_dropdown_button_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_image_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_radio_list_tile_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_show_date_picker_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_slider_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_switch_list_tile_view.dart';
import 'package:Flutter_template/src/sample_feature/sample_detail/sample_item_text_form_field_view.dart';
import 'package:Flutter_template/src/sample_login/login_view.dart';

import 'sample_feature/sample_item_list_view.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          restorationScopeId: 'app',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
          ],
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          theme: ThemeData(
              colorSchemeSeed: const Color.fromARGB(255, 200, 255, 249)),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,
          home:
              BottomNavigationBarWidget(settingsController: settingsController),
          // アプリ内の遷移先、利用するオブジェクトを設定
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsView.routeName:
                    return SettingsView(controller: settingsController);
                  case LoginView.routeName:
                    return const LoginView();
                  case SampleItemTextFormFieldView.routeName:
                    return const SampleItemTextFormFieldView();
                  case SampleItemCardView.routeName:
                    return const SampleItemCardView();
                  case SampleItemCheckBoxView.routeName:
                    return const SampleItemCheckBoxView();
                  case SampleItemCheckBoxListTileView.routeName:
                    return const SampleItemCheckBoxListTileView();
                  case SampleItemDropdownButtonView.routeName:
                    return const SampleItemDropdownButtonView();
                  case SampleItemImageView.routeName:
                    return const SampleItemImageView();
                  case SampleItemRadioListTileView.routeName:
                    return const SampleItemRadioListTileView();
                  case SampleItemShowDatePickerView.routeName:
                    return const SampleItemShowDatePickerView();
                  case SampleItemSliderView.routeName:
                    return const SampleItemSliderView();
                  case SampleItemSwitchListTileView.routeName:
                    return const SampleItemSwitchListTileView();
                  case SampleItemListView.routeName:
                    return const SampleItemListView();
                  case BottomNavigationBarWidget.routeName:
                  default:
                    return BottomNavigationBarWidget(
                        settingsController: settingsController);
                }
              },
            );
          },
        );
      },
    );
  }
}
