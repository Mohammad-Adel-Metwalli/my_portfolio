import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

Future<void> downloadPdf() async
{
  try
  {
    final bytes = await rootBundle.load('Assets/PDFs/My Resume.pdf');
    final blob = html.Blob([bytes], 'application/pdf');
    final anchor = html.AnchorElement();
    anchor.href = html.Url.createObjectUrlFromBlob(blob);
    anchor.download = 'Mohammad Adel Metwalli Resume.pdf';
    anchor.click();

    await Future.delayed(const Duration(seconds: 5), ()
    {
      if(anchor.href != null)
      {
        html.Url.revokeObjectUrl(anchor.href ?? '');
      }
    });
  }

  catch (error)
  {
    debugPrint('Error downloading PDF: $error');
  }
}

Future<bool> launchUrlMedia(String url) => launchUrl(Uri.parse(url));