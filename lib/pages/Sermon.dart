import 'package:flutter/material.dart';

class Sermon extends StatefulWidget {
  @override
  _SermonState createState() => _SermonState();
}

class _SermonState extends State<Sermon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sermon"),
      ),
    );
  }
}
