import 'package:ecommerce_flutter/components/cart_item.dart';
import 'package:ecommerce_flutter/models/cart.dart';
import 'package:ecommerce_flutter/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My cart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: value.getUserCart().isEmpty
                  ? const Center(
                      child: Text("No items added yet....."),
                    )
                  : ListView.builder(
                      itemCount: value.getUserCart().length,
                      itemBuilder: (context, index) {
                        Shoe indinvidualShoe = value.getUserCart()[index];
                        return CartItem(
                          shoe: indinvidualShoe,
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
