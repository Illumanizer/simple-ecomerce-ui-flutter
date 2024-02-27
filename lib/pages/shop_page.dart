import 'package:ecommerce_flutter/components/shoe_tile.dart';
import 'package:ecommerce_flutter/models/cart.dart';
import 'package:ecommerce_flutter/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    void Function()? addShoeToCart(Shoe shoe) {
      Cart cart = Provider.of<Cart>(context, listen: false);
      cart.addToCart(shoe);

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Successfully added"),
          content: Text("${shoe.name} has been added to cart"),
          // actions: [
          //   TextButton(
          //       onPressed: () {
          //         Navigator.pop(context);
          //       },
          //       child: Text("Continue Shopping")),
          //   TextButton(
          //       onPressed: () {
          //         Navigator.pushNamed(context, "/cart");
          //       },
          //       child: Text("Go to Cart")),
          // ],
        ),
      );
    }

    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //search page
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search"),
                Icon(Icons.search),
              ],
            ),
          ),
          //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "abcdefghi saghiup fdsajha aksdjgh",
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),
          //hot pick
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Hot Picks ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("View All"),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //list of shoe for sale

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getShoeShop()[index];
                  return ShoeTile(
                    shoe: shoe,
                    onTabAddButton:()=> addShoeToCart(shoe),
                  );
                },
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Divider(
              color: Colors.white,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
