class SupermarketItems {
  String itemName;
  String itemImage;
  double itemPrice;
  String supermarketLocation;
  double supermarketDistance;
  String openTime;
  String supermarketDescription;

  SupermarketItems({
    required this.itemName,
    required this.itemImage,
    required this.itemPrice,
    required this.supermarketLocation,
    required this.supermarketDistance,
    required this.openTime,
    required this.supermarketDescription,
  });
}

var supermarketItemsList = [
  SupermarketItems(
      itemName: 'Apel Fuji',
      itemImage: 'images/item_apel.jpg',
      itemPrice: 16000,
      supermarketLocation: 'Giant Keputih, Sukolilo',
      supermarketDistance: 100.99,
      openTime: '10.00-22.00',
      supermarketDescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  SupermarketItems(
      itemName: 'Keju',
      itemImage: 'images/item_keju.jpg',
      itemPrice: 20000,
      supermarketLocation: 'Superindo Keputih, Sukolilo',
      supermarketDistance: 50.99,
      openTime: '10.00-22.00',
      supermarketDescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  SupermarketItems(
      itemName: 'Pepaya',
      itemImage: 'images/item_pepaya.jpg',
      itemPrice: 8000,
      supermarketLocation: 'Pasar Keputih, Sukolilo',
      supermarketDistance: 100.99,
      openTime: '04.00-17.00',
      supermarketDescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
];
