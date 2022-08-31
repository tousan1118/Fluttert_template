import 'package:url_launcher/url_launcher.dart';

class Urls {
  static Future<void> openUrl(
      {required String referenceUri, required bool isExternal}) async {
    LaunchMode mode =
        isExternal ? LaunchMode.externalApplication : LaunchMode.inAppWebView;
    if (!await launchUrl(Uri.parse(referenceUri), mode: mode)) {
      throw 'このURLにはアクセスできません';
    }
  }
}
