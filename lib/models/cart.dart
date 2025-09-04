import 'package:flutter/widgets.dart';
import 'package:nikeapp/models/shoe.dart';

class Cart extends ChangeNotifier{

    List<Shoe> shoeShop = [
        Shoe(
            name: "Air Jordan", 
            price: "390", 
            description: "Drawn from MJ's famed moniker, accents for a luxe and true-to-form finish.", 
            imagePath: "lib/images/AirJordan.png",
        ),
        Shoe(
            name: "Dunk Pandas", 
            price: "289", 
            description: "Nike Dunk Low Retro returns with crisp overlays and original team colours.", 
            imagePath: "lib/images/DunkPandas.png",
        ),
        Shoe(
            name: "Air Force 1", 
            price: "299", 
            description: "These AF-1s are all about the details. Ysour mark with personal text on the backtab.", 
            imagePath: "lib/images/AirForce1.png",
        ),
        Shoe(
            name: "Jordan Max", 
            price: "259", 
            description: "These Max are all about the details. Your mark with personal text on the backtab.", 
            imagePath: "lib/images/JordanMax.png",
        ),
        Shoe(
            name: "Air Jordan 3", 
            price: "359", 
            description: "The iconic AJ3 'Black Cat' returns. Drawn from MJ's famed moniker.", 
            imagePath: "lib/images/AirJordanBlackCat.png",
        )
    ];

    List<Shoe> userCart = [];

    List<Shoe> getShoeList() {
        return shoeShop;
    }

    List<Shoe> getUserCart() {
        return userCart;
    } 

    void addItemToCart(Shoe shoe){
        userCart.add(shoe);
        notifyListeners();
    }

    void removeItemFromCart(Shoe shoe){
        userCart.remove(shoe);
        notifyListeners();
    }
  
}
