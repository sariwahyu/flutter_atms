import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_atms/model/supermarket_list.dart';

class Supermarket extends StatelessWidget {
  final SupermarketItems supermarketItem;

  Supermarket({required this.supermarketItem});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return SupermarketMobile(supermarketItem: supermarketItem);
        } else {
          return SupermarketWeb(supermarketItem: supermarketItem);
        }
      },
    );
  }
}

class SupermarketWeb extends StatelessWidget {
  final SupermarketItems supermarketItem;

  SupermarketWeb({required this.supermarketItem});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold();
  }
}

class SupermarketMobile extends StatelessWidget {
  final SupermarketItems supermarketItem;

  SupermarketMobile({required this.supermarketItem});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold();
  }
}
