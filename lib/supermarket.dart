import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_atms/itemsupermarket.dart';
import 'package:flutter_atms/model/supermarket_list.dart';

class Supermarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Items Supermarket'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ItemsSupermarket();
        },
      ),
    );
  }
}

class ItemsSupermarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final SupermarketItems items = supermarketItemsList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailItemSupermarket(supermarketItem: items);
            }));
          },
          child: Card(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Image.asset(
                  items.itemImage,
                  height: 120,
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        items.itemName,
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        items.itemPrice.toString(),
                      ),
                      Text(items.supermarketLocation),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        );
      },
      itemCount: supermarketItemsList.length,
    );
  }
}
