import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'widgets/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String route = '/details';

  DetailsScreen({super.key});

  bool isLoading = true;

  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {},
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onHttpError: (HttpResponseError error) {},
        onWebResourceError: (WebResourceError error) {},
      ),
    )
    ..loadRequest(Uri.parse('${Get.arguments['infoUrl']}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: '${Get.arguments['bookId']}'),
      body: WebViewWidget(controller: controller),
    );
  }
}
