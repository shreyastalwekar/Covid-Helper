import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Prevention extends StatefulWidget {
  @override
  createState() => _PreventionState();
}

class _PreventionState extends State<Prevention> {
  final _key = UniqueKey();

  _PreventionState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Prevention'),
          backgroundColor: Color.fromRGBO(2, 64, 134, 01),
        ),
        body: Column(
          children: [
            Expanded(
              child: WebView(
                key: _key,
                javaScriptMode: JavaScriptMode.unrestricted,
                initialUrl:
                    'https://www.cdc.gov/coronavirus/2019-ncov/your-health/index.html',
              ),
            )
          ],
        ));
  }
}
