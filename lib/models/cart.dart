
import 'package:flutter/foundation.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
//  list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Jordan",
        price: "24000",
        imagePath: "images/shoe2.png",
        discription: "Cool Shoes"),
    Shoe(
        name: "Flying Kohli",
        price: "99000",
        imagePath: "images/shoe3.png",
        discription: "Fantastic Shoes"),
    Shoe(
        name: "runnup Msd",
        price: "24000",
        imagePath: "images/shoe4.png",
        discription: "Awesome Shoes"),
    Shoe(
        name: "Catchy fanky",
        price: "45000",
        imagePath: "images/shoe5.png",
        discription: "Superb Shoes"),
  ];

//list of items in user cart

  List<Shoe> userCart = [];

//get List of shoes for sale

  List<Shoe> getShoeList (){

    return shoeShop;
  }

//get cart

  List<Shoe> getUserCart (){

    return userCart;
  }

//add items to cart

void addItemsToCart(Shoe shoe){

    userCart.add(shoe);
    notifyListeners();
}

//remove items from cart

  void removeItemsFromCart(Shoe shoe){

    userCart.remove(shoe);
    notifyListeners();
  }
}
