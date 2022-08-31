import 'package:flutter/material.dart';
import 'package:Flutter_template/src/utils/urls.dart';

class SampleItemCardView extends StatelessWidget {
  const SampleItemCardView({Key? key}) : super(key: key);

  static const routeName = '/sample_item_card';
  static const referenceUri =
      'https://api.flutter.dev/flutter/material/Card-class.html';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card'),
        ),
        body: Column(
          children: <Widget>[
            const Spacer(),
            ElevatedButton(
              child: const Text('公式リファレンスを開く'),
              onPressed: () =>
                  Urls.openUrl(referenceUri: referenceUri, isExternal: true),
            ),
            const ElevatedCardExample(),
            const FilledCardExample(),
            const OutlinedCardExample(),
            const Spacer(),
          ],
        ));
  }
}

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Elevated Card')),
        ),
      ),
    );
  }
}

class FilledCardExample extends StatelessWidget {
  const FilledCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Filled Card')),
        ),
      ),
    );
  }
}

class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Outlined Card')),
        ),
      ),
    );
  }
}
