import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  @override
  createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  final _key = UniqueKey();

  _WebViewContainerState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: WebView(
                key: _key,
                javaScriptMode: JavaScriptMode.unrestricted,
                initialUrl: 'https://www.covid19india.org/'))
      ],
    ));
  }
}
