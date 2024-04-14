import 'package:url_launcher/url_launcher.dart';

Future<bool> launchUrlMedia(String url) => launchUrl(Uri.parse(url));