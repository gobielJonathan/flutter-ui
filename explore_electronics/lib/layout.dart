import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget child, appBar;

  const Layout({Key key, @required this.appBar, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: this.appBar,
      body: SafeArea(child: this.child),
    );
  }
}