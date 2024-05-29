import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static Future<void> goTo(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch: $url');
    }
  }
}
