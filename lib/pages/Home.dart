import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Builder(
        builder: (BuildContext context){
          return WebView(
            initialUrl: 'https://gracenetwork.net/',
            javascriptMode: JavascriptMode.unrestricted,
          );
        }
      )
    );

  }
}