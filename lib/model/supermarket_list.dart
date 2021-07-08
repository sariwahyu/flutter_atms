import 'dart:ffi';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_atms/supermarket.dart';

class SupermarketItems {
  String itemName;
  String supermarketLocation;
  double supermarketDistance;
  List<Map<String,TimeElement>> openDays;
  String supermarketDescription;

  SupermarketItems({
    required this.itemName,
    required this.supermarketLocation,
    required this.supermarketDistance,
    required this.openDays,
    required this.supermarketDescription,
  });
}

var supermarketItems = [
  SupermarketItems(
    itemName: 'Pepaya', 
    supermarketLocation: 'Giant Keputih, Sukolilo', 
    supermarketDistance: 100.99, 
    openDays: [
      'Senin' : 08.00-21.00,
      'Selasa' : 08.00-21.00,
      'Rabu' : 08.00-21.00,
      'Kamis' : 08.00-21.00,
      'Jumat' : 08.00-21.00,
      'Sabtu' : 08.00-21.00,
      'Minggu' : 08.00-21.00,
      ], 
    supermarketDescription: 'supermarketDescription'),
];
