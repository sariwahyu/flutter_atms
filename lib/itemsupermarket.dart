import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_atms/model/supermarket_list.dart';
//import 'package:flutter_atms/supermarket.dart';

class DetailItemSupermarket extends StatelessWidget {
  final SupermarketItems supermarketItem;

  DetailItemSupermarket({required this.supermarketItem});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 1000) {
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
              width: screenWidth <= 1200 ? 1000 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 32),
                  Expanded(
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            supermarketItem.itemImage,
                            width: 480,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        SizedBox(width: 32),
                        Expanded(
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(
                                      top: 26.0,
                                      bottom: 10.0,
                                      left: 32.0,
                                      right: 32.0),
                                  child: Text(
                                    supermarketItem.itemName,
                                    style: TextStyle(fontSize: 24.0),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 32.0),
                                  child: Text(
                                    'Rp ' +
                                        supermarketItem.itemPrice.toString() +
                                        ',00',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 32.0),
                                  child: Text(
                                    'Deskripsi : \n' +
                                        supermarketItem.supermarketDescription,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 32.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.store_mall_directory),
                                      Text(
                                        ' ' +
                                            supermarketItem.supermarketLocation,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 32.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.access_time_filled),
                                      Text(
                                        ' Jam Buka : ' +
                                            supermarketItem.openTime,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 32.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on_rounded),
                                      Text(
                                        ' Jarak :' +
                                            supermarketItem.supermarketDistance
                                                .toString(),
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Scrollbar(
                        child: Container(
                          height: 150,
                        ),
                      )
                    ],
                  )
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(supermarketItem.itemImage),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                supermarketItem.itemName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
