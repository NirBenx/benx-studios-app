import 'package:flutter/material.dart';

import '../models/clothing.dart';

// ignore: must_be_immutable
class ClothingTile extends StatelessWidget {
  Clothing clothing;
  void Function()? onTap;
   ClothingTile({super.key, required this.clothing, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        // clothing pic
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(clothing.imagePath)),
        // description
        Text(
          clothing.description,
           style: const TextStyle(color: Colors.grey, fontFamily: 'Sora'),),

        // price + details
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(clothing.name,style: const TextStyle(fontFamily: 'Sora', fontWeight: FontWeight.bold,
              fontSize: 20), ),
          
              const SizedBox(height: 5),
          
              Text('\$' + clothing.price, style: const TextStyle(fontFamily: 'Sora', color: Colors.grey,
              fontWeight: FontWeight.bold),)
            ],
            ),
          
          
          // button to add to cart
           GestureDetector(
            onTap: onTap,
             child: Container(
              padding: const EdgeInsets.all(20),
               decoration: const BoxDecoration(color: Colors.black,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
               bottomRight: Radius.circular(12)),
               ),
               child: const Icon(Icons.add, color: Colors.white
               ),
             ),
           )
          ],
                ),
        ),
        ],
      ),
    );
  }
}