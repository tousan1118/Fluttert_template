import 'package:flutter/material.dart';
import 'package:Flutter_template/src/utils/urls.dart';

class SampleItemSliderView extends StatefulWidget {
  const SampleItemSliderView({Key? key}) : super(key: key);

  static const routeName = '/sample_item_slider';

  @override
  State<SampleItemSliderView> createState() => _SampleItemSliderViewState();
}

class _SampleItemSliderViewState extends State<SampleItemSliderView> {
  static const referenceUri =
      'https://api.flutter.dev/flutter/material/Slider-class.html';

  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider'),
        ),
        body: Column(children: <Widget>[
          const Spacer(),
          ElevatedButton(
            child: const Text('公式リファレンスを開く'),
            onPressed: () =>
                Urls.openUrl(referenceUri: referenceUri, isExternal: true),
          ),
          Slider(
            value: _currentSliderValue,
            max: 100,
            divisions: 5,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
          const Spacer(),
        ]));
  }
}
