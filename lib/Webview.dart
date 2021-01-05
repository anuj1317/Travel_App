import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webview extends StatefulWidget {
  final String link1;

  const Webview({Key key, this.link1}) : super(key: key);
  @override
  _WebviewState createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: widget.link1,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
