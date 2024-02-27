import 'package:ecommerce_flutter/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  //list of shoe for sale
  List<Shoe> shoeShop=[
    Shoe(
      imagePath: "lib/assets/images/shoe1.jpeg",
      name: "Nike Air Max 90",
      price: 150.0,
      description:
          "The Nike Air Max 90 stays true to its OG roots with its iconic Waffle outsole, stitched overlays and classic, color-accented TPU plates. Retro colors celebrate the first generation while Max Air cushioning adds comfort to your journey.",
    ),
    Shoe(
      name: "Nike Air Max 95",
      price: 200,
      description: "agkshkanso asgungsa aogsnoishdo agsogoue asgojeo",
      imagePath: "lib/assets/images/shoe2.jpeg",
    ),
  ];
  //list of items in user's cart
  List<Shoe> userCart=[];
  //get list of shoe for sale
  List<Shoe> getShoeShop(){
    return shoeShop;
  }
  //get list of items in user's cart
  List<Shoe> getUserCart(){
    return userCart;
  }
  //add item to cart
  void addToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  //remove item from cart
  void removeFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  } 
}