import 'package:local_shopper/widgets/store_card.dart';
import 'package:local_shopper/widgets/category_card.dart';

//product images
const String imageURL_soap = 'https://images.unsplash.com/photo-1603533626135-f3e3229eb018?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';

//store images
const String imageURL_utensils = 'https://images.unsplash.com/photo-1466027575040-12134f1397fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
const String imageURL_makeup = 'https://images.unsplash.com/photo-1608979048467-6194dabc6a3d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
const String imageURL_clothes = 'https://images.unsplash.com/photo-1558769132-92e717d613cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80';
const String imageURL_nailpolish = 'https://images.unsplash.com/photo-1534131092884-4a0a9d19dff6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';

//category images
const String imageURL_beauty = 'https://images.unsplash.com/photo-1596462502278-27bfdc403348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
const String imageURL_apparel = 'https://images.unsplash.com/photo-1617405872665-c6aa7ab50895?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=591&q=80';
const String imageURL_homegoods = 'https://images.unsplash.com/photo-1595219702653-532c84e21e46?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80';
const String imageURL_accessories = 'https://images.unsplash.com/photo-1614606140752-7ebc097a67ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80';

//stores list
List<Storefront> stores = [
  Storefront("Sandra's Cosmetics", "Beauty", 0.25, 4, imageURL_makeup),
  Storefront("Sweet Home", "Home Goods", 1.5, 4, imageURL_utensils),
  Storefront("Dress Up Show Up", "Clothing", 0.9, 4, imageURL_clothes),
  Storefront("Make Your World", "Beauty", 1, 4, imageURL_nailpolish),
];

//categories list
List<StoreCategory> categories = [
  StoreCategory("Apparel", 50, imageURL_apparel),
  StoreCategory("Beauty", 31, imageURL_beauty),
  StoreCategory("Home Goods", 10, imageURL_homegoods),
  StoreCategory("Jewellery", 22, imageURL_accessories),
];