import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_atms/model/supermarket_list.dart';
import 'package:flutter_atms/supermarket.dart';

class DetailItemSupermarket extends StatelessWidget {
  final SupermarketItems supermarketItem;

  DetailItemSupermarket({required this.supermarketItem});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return DetailItemSupermarketMobile(supermarketItem: supermarketItem);
        } else {
          return DetailItemSupermarketWeb(supermarketItem: supermarketItem);
        }
      },
    );
  }
}

class DetailItemSupermarketWeb extends StatelessWidget {
  final SupermarketItems supermarketItem;

  DetailItemSupermarketWeb({required this.supermarketItem});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 64,
          ),
          child: Center(
            child: Container(
              width: screenWidth <= 1200 ? 600 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    supermarketItem.itemName,
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    ClipRRect(
                      child: Image.asset(supermarketItem.itemImage),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    SizedBox(height: 32),
                    Expanded(
                        child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              child: Text(
                                supermarketItem.itemName,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                            Row()
                          ],
                        ),
                      ),
                    ))
                  ])
                ],
              ),
            ),
          )),
    );
  }
}

class DetailItemSupermarketMobile extends StatelessWidget {
  final SupermarketItems supermarketItem;

  DetailItemSupermarketMobile({required this.supermarketItem});

  @override
  Widget build(BuildContext context) {
    //final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold();
  }
}
