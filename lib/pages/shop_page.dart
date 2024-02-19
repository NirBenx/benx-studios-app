import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/clothing_tile.dart';
import '../models/cart.dart';
import '../models/clothing.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

void addClothingToCart(Clothing clothing) {
  Provider.of<Cart>(context, listen: false).addItemToCart(clothing);

  showDialog(context: context, builder: (context) => AlertDialog(
    title: Text('Successfully added!'),
    content: Text('Check your cart'),
  ),);
}

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(children: [
      Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Search', style: TextStyle(color: Color.fromARGB(255, 92, 91, 91),
          fontFamily: 'Sora'),),
          Icon(Icons.search, color: Colors.grey,
          ),
      ]
    ),
        ), 
        Padding(padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Text('New in: handpicked daily from the world’s best boutiques', style: TextStyle(
          color: Colors.grey[600]),
        ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [ Text('Recommended for you', style: TextStyle(fontFamily: 'Sora', 
            fontSize: 24,
            fontWeight: FontWeight.bold),
            ),
            Text('See all', style: TextStyle(fontFamily: 'Sora', 
            fontWeight: FontWeight.bold, color: Colors.blue),),
            ],
          ),
        ),  
        const SizedBox(height: 10),
        Expanded(child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            Clothing clothing = value.getClothingList() [index];
            return ClothingTile(clothing: clothing,
            onTap: () => addClothingToCart(clothing),
            );
          },
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15, left: 5, right: 5),
          child: Divider(
            color: Colors.white,
          ),)
    ],
    ),);
  }
}