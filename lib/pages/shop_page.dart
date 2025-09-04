import 'package:flutter/material.dart';
import 'package:nikeapp/components/shoe_tile.dart';
import 'package:nikeapp/models/cart.dart';
import 'package:nikeapp/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        Future.delayed(const Duration(seconds: 1), () {
          Navigator.of(context).pop(true);
        });

        return const AlertDialog(
          title: Text("Successfully added!"),
          content: Text("Check your cart!"),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context, value, child) => Column(
        children: [
          Container(
            padding: const  EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search",style: TextStyle(color: Colors.grey.shade700),),
                Icon(Icons.search,color: Colors.grey.shade700,)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              "everyone flies... some fly longer than others",
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),
          
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: ( context, index){
                Shoe shoe = value.getShoeList()[index];
                return SizedBox(
                  width: 350,   
                  child: ShoeTile(
                    shoe: shoe,
                    onTap: () => addShoeToCart(shoe),
                  ),
                );
              }
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(color: Colors.white),
          )
        ],
      ),
    );
  }
}