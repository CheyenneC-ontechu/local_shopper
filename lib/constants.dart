import 'package:local_shopper/widgets/inventory.dart';
import 'package:local_shopper/widgets/store_card.dart';
import 'package:local_shopper/widgets/category_card.dart';
import 'screens/storepage.dart';

//product images
const String imageURL_soap = 'https://images.unsplash.com/photo-1603533626135-f3e3229eb018?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
const String imageURL_shampoo = 'https://images.unsplash.com/photo-1619021016992-07909c5b85d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
const String imageURL_candle = 'https://images.unsplash.com/photo-1617992372777-f99a4e1668bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';

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

//search results list
List<Storefront> storeResults = [
  Storefront("Sandra's Cosmetics", "Home Goods", 0.25, 4, imageURL_makeup),
  Storefront("Sweet Home", "Home Goods", 1.5, 4, imageURL_utensils),
  Storefront("Dress Up Show Up", "Home Goods", 0.9, 4, imageURL_clothes),
  Storefront("Make Your World", "Home Goods", 1, 4, imageURL_nailpolish),
];

//reviews list
List<Review> reviews = [
  Review("Joschua H", "The candles smell very nice, I bought the autumn bliss and wonder of winter, both of...", 5),
  Review("Chiara W", "Wish I could smell the store in person but I'm glad I can at least shop here! The soap...", 4),
  Review("Annabelle R", "Staff were really kind on the phone and helped me pick out some scented soap for...", 4)
];

List<InventoryItem> inventory = [
  InventoryItem("Organic Hand Soap", imageURL_soap, 12.34),
  InventoryItem("Wonder of Winter Candle", imageURL_candle, 11.40),
  InventoryItem("Strawberry Scented Shampoo", imageURL_shampoo, 13.50),
];