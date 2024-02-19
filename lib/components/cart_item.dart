import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/clothing.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Clothing clothing;
   CartItem({super.key, required this.clothing});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.clothing);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[100],
      borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.clothing.imagePath),
        title: Text(widget.clothing.name),
        subtitle: Text('\$' + widget.clothing.price),
        trailing: IconButton(
          icon: Icon(Icons.delete), onPressed: removeItemFromCart,),
      ),
    );
  }
}