import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainerr extends StatefulWidget {
  @override
  createState() => _WebViewContainerrState();
}

class _WebViewContainerrState extends State<WebViewContainerr> {
  final _key = UniqueKey();
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  // _WebViewContainerrState();
  WebViewController _myController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('My Vaccination'),
          backgroundColor: Color.fromRGBO(2, 64, 134, 01),
        ),
        body: Column(
          children: [
            Expanded(
              child: WebView(
                key: _key,
                javaScriptMode: JavaScriptMode.unrestricted,
                initialUrl: 'https://under45.in/',
                onWebViewCreated: (WebViewController webViewController) {
                  _controller.complete(webViewController);
                  _myController = webViewController;
                },
              ),
            )
          ],
        ));
  }
}
