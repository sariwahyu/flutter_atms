class SupermarketItems {
  String itemName;
  double itemPrice;
  String supermarketLocation;
  double supermarketDistance;
  List<Map<String, double>> openDays;
  String supermarketDescription;

  SupermarketItems({
    required this.itemName,
    required this.itemPrice,
    required this.supermarketLocation,
    required this.supermarketDistance,
    required this.openDays,
    required this.supermarketDescription,
  });
}

var supermarketItems = [
  SupermarketItems(
      itemName: 'Apel Fuji',
      itemPrice: 16000,
      supermarketLocation: 'Giant Keputih, Sukolilo',
      supermarketDistance: 100.99,
      openDays: [
        {'Senin': 08.00 - 21.00},
        {'Selasa': 08.00 - 21.00},
        {'Rabu': 08.00 - 21.00},
        {'Kamis': 08.00 - 21.00},
        {'Jumat': 08.00 - 21.00},
        {'Sabtu': 08.00 - 21.00},
        {'Minggu': 08.00 - 21.00},
      ],
      supermarketDescription: 'supermarketDescription'),
  SupermarketItems(
      itemName: 'Keju',
      itemPrice: 20000,
      supermarketLocation: 'Superindo Keputih, Sukolilo',
      supermarketDistance: 50.99,
      openDays: [
        {'Senin': 08.00 - 21.00},
        {'Selasa': 08.00 - 21.00},
        {'Rabu': 08.00 - 21.00},
        {'Kamis': 08.00 - 21.00},
        {'Jumat': 08.00 - 21.00},
        {'Sabtu': 08.00 - 21.00},
        {'Minggu': 08.00 - 21.00},
      ],
      supermarketDescription: 'supermarketDescription'),
  SupermarketItems(
      itemName: 'Pepaya',
      itemPrice: 8000,
      supermarketLocation: 'Pasar Keputih, Sukolilo',
      supermarketDistance: 100.99,
      openDays: [
        {'Senin': 08.00 - 22.00},
        {'Selasa': 08.00 - 22.00},
        {'Rabu': 08.00 - 22.00},
        {'Kamis': 08.00 - 22.00},
        {'Jumat': 08.00 - 22.00},
        {'Sabtu': 08.00 - 22.00},
        {'Minggu': 08.00 - 00.00},
      ],
      supermarketDescription: 'supermarketDescription'),
];
