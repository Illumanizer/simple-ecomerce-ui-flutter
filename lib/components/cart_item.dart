import 'package:ecommerce_flutter/models/cart.dart';
import 'package:ecommerce_flutter/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removefromCart() {
    Provider.of<Cart>(context, listen: false).removeFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name ),
        subtitle: Text("\$${widget.shoe.price}"),
        trailing: IconButton(
          onPressed: removefromCart,
          icon: Icon(Icons.delete,color: Colors.red[400],),
        ),
      ),
    );
  }
}
