import 'package:flutter/material.dart';

class Helper extends StatelessWidget {
  const Helper({Key key, this.msg}) : super(key: key);

  final String msg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(this.msg),
      ),
    );
  }
}
