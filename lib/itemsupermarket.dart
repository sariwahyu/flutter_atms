import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_atms/model/supermarket_list.dart';
import 'package:flutter_atms/supermarket.dart';

class ItemSupermarket extends StatelessWidget {
  final SupermarketItems supermarketItem;

  ItemSupermarket({required this.supermarketItem});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return ItemSupermarketMobile(supermarketItem: supermarketItem);
        } else {
          return ItemSupermarketWeb(supermarketItem: supermarketItem);
        }
      },
    );
  }
}

class ItemSupermarketWeb extends StatelessWidget {
  final SupermarketItems supermarketItem;

  ItemSupermarketWeb({required this.supermarketItem});

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

class ItemSupermarketMobile extends StatelessWidget {
  final SupermarketItems supermarketItem;

  ItemSupermarketMobile({required this.supermarketItem});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold();
  }
}
