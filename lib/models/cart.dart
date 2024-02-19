import 'package:flutter/material.dart';

import 'clothing.dart';

class Cart extends ChangeNotifier {
  List<Clothing> clothingShop = [
    Clothing(name: 'Tod\'s', price: '845', imagePath: 'lib/images/tods.png', description: 'T leather loafers'),
  Clothing(name: 'Neighborhood', price: '549', imagePath: 'lib/images/coat.png', description: 'padded bomber jacket'),
  Clothing(name: 'Stone Bomber', price: '1359', imagePath: 'lib/images/stone.png', description: 'stone island bomber'),
  Clothing(name: 'Zegna Bag', price: '1,890', imagePath: 'lib/images/zegna.png', description: 'Pelletessuta Edgy business bag'),
  Clothing(name: 'Tomford Suit', price: '5,000', imagePath: 'lib/images/tods.png', description: 'peaked lapels tailored suit'),
  ];
List<Clothing> userCart = [];

List<Clothing> getClothingList () {
  return clothingShop;
}

List<Clothing> getUserCart() {
  return userCart;
}

  void addItemToCart(Clothing clothing) {
    userCart.add(clothing);
    notifyListeners();
}

void removeItemFromCart(Clothing clothing) {
  userCart.remove(clothing);
  notifyListeners();
}
}