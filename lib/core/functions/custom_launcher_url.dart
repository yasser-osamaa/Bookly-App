import 'package:bookly/core/functions/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLauncherUrl(context, String? url) async {
  if (url != null) {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    } else {
      showSnackBar(context, "can't load this url$url");
    }
  }
}
