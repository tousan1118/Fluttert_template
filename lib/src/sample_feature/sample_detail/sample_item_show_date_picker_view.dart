import 'package:flutter/material.dart';
import 'package:Flutter_template/src/utils/urls.dart';
import 'package:intl/intl.dart';

class SampleItemShowDatePickerView extends StatefulWidget {
  const SampleItemShowDatePickerView({Key? key}) : super(key: key);

  static const routeName = '/sample_item_show_date_picker';

  @override
  State<SampleItemShowDatePickerView> createState() =>
      _SampleItemShowDatePickerState();
}

class _SampleItemShowDatePickerState
    extends State<SampleItemShowDatePickerView> {
  static const referenceUri =
      'https://api.flutter.dev/flutter/material/CalendarDatePicker-class.html';

  DateTime selectedDate = DateTime.now();
  DateFormat outputFormat = DateFormat('yyyy-MM-dd');

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
        context: context,
        locale: const Locale('ja'),
        initialDate: selectedDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2050));
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CheckBox List Tile'),
        ),
        body: Center(
            child: Column(children: <Widget>[
          ElevatedButton(
            child: const Text('公式リファレンスを開く'),
            onPressed: () =>
                Urls.openUrl(referenceUri: referenceUri, isExternal: true),
          ),
          Text(outputFormat.format(selectedDate)),
          ElevatedButton(
            onPressed: () {
              _selectDate(context);
            },
            child: const Text("日付を選択する"),
          ),
          const Spacer(),
        ])));
  }
}
