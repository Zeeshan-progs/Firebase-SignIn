import 'package:flutter/material.dart';

import '../AppBarWidget.dart';

class GoogleScreen extends StatefulWidget {
  @override
  _GoogleScreenState createState() => _GoogleScreenState();
}

class _GoogleScreenState extends State<GoogleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarWidget(),
        centerTitle: true,
      ),
    );
  }
}
