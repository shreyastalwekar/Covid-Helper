import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TelegramWebview extends StatefulWidget {
  @override
  createState() => _TelegramWebviewState();
}

class _TelegramWebviewState extends State<TelegramWebview> {
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
          title: Text('Slots Notification'),
          backgroundColor: Color.fromRGBO(2, 64, 134, 01),
        ),
        body: Column(
          children: [
            Expanded(
              child: WebView(
                key: _key,
                javaScriptMode: JavaScriptMode.unrestricted,
                initialUrl: 'https://www.cowin.gov.in/',
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
