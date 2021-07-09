import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_atms/model/supermarket_list.dart';

class Supermarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Supermarket Items'),
        ),
        body: Center(
          child: Text('Helo'),
        ));
  }
}
