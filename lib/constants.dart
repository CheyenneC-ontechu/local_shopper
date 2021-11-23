import 'package:local_shopper/widgets/inventory.dart';
import 'package:local_shopper/widgets/store_card.dart';
import 'package:local_shopper/widgets/category_card.dart';
import 'screens/storepage.dart';

//Home Sweet product images
const String imageURL_soap = 'https://images.unsplash.com/photo-1603533626135-f3e3229eb018?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
const String imageURL_shampoo = 'https://images.unsplash.com/photo-1619021016992-07909c5b85d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
const String imageURL_candle = 'https://images.unsplash.com/photo-1617992372777-f99a4e1668bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';

//Dress Up Show Up product images
const String imageURL_jacket = 'https://images.unsplash.com/photo-1611911813383-67769b37a149?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjA2fHxjb2F0fGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=600&q=60';
const String imageURL_vest = 'https://images.unsplash.com/photo-1572108055708-778eb430f00c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';


//store images
const String imageURL_utensils = 'https://images.unsplash.com/photo-1466027575040-12134f1397fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
const String imageURL_makeup = 'https://images.unsplash.com/photo-1608979048467-6194dabc6a3d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
const String imageURL_clothes = 'https://images.unsplash.com/photo-1558769132-92e717d613cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80';
const String imageURL_nailpolish = 'https://images.unsplash.com/photo-1534131092884-4a0a9d19dff6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';

//store results images
const String imageURL_suit = 'https://images.unsplash.com/photo-1592878940526-0214b0f374f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
const String imageURL_knit = 'https://images.unsplash.com/photo-1536992266094-82847e1fd431?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=578&q=80';
const String imageURL_twopeople = 'https://images.unsplash.com/photo-1574279571442-3cfa669b4abe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';

//category images
const String imageURL_beauty = 'https://images.unsplash.com/photo-1596462502278-27bfdc403348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
const String imageURL_apparel = 'https://images.unsplash.com/photo-1617405872665-c6aa7ab50895?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=591&q=80';
const String imageURL_homegoods = 'https://images.unsplash.com/photo-1595219702653-532c84e21e46?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80';
const String imageURL_accessories = 'https://images.unsplash.com/photo-1614606140752-7ebc097a67ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80';

//stores list
List<Storefront> stores = [
  Storefront("Sandra's Cosmetics", "Beauty", 0.25, 4, imageURL_makeup,2),
  Storefront("Sweet Home", "Home Goods", 1.5, 4, imageURL_utensils,2),
  Storefront("Dress Up Show Up", "Clothing", 0.9, 4, imageURL_clothes,1),
  Storefront("Make Your World", "Beauty", 1, 4, imageURL_nailpolish,2),
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
  Storefront("Jackets and Jackets", "Apparel", 0.25, 4, imageURL_knit,3),
  Storefront("Round Town", "Apparel", 2.1, 4, imageURL_suit,3),
  Storefront("Dress Up Show Up", "Apparel", 0.7, 5, imageURL_clothes,1),
  Storefront("U n Me", "Apparel", 1, 5, imageURL_twopeople,2),
];

//reviews list
List<Review> reviews = [
  Review("Joschua H", "The candles smell very nice, I bought the autumn bliss and wonder of winter, both of...", 5),
  Review("Chiara W", "Wish I could smell the store in person but I'm glad I can at least shop here! The soap...", 4),
  Review("Annabelle R", "Staff were really kind on the phone and helped me pick out some scented soap for...", 4)
];

//Home Sweet inventory list
List<InventoryItem> inventoryHomeSweet = [
  InventoryItem("Organic Hand Soap", imageURL_soap, 12.34),
  InventoryItem("Wonder of Winter Candle", imageURL_candle, 11.40),
  InventoryItem("Strawberry Scented Shampoo", imageURL_shampoo, 13.50),
];

//Dress Up inventory list
List<InventoryItem> inventoryDressUp = [
  InventoryItem("name", imageURL_jacket, 43.00),
  InventoryItem("name", imageURL_vest, 35.45)
];