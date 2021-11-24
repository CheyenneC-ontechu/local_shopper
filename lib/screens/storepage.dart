import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/searchbar.dart';
import '../widgets/inventory.dart';
import '../widgets/storeinfocard.dart';
import 'homepage.dart';

class StorePage extends StatefulWidget{
  final String? imageURL, category, name;
  final double? distance;
  final int? rating;
  List<InventoryItem> inventory;

  StorePage({Key? key,
    this.name,
    this.category,
    this.distance,
    this.imageURL,
    this.rating,
    required this.inventory
  }) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> with SingleTickerProviderStateMixin{

  Icon _icon = const Icon(Icons.favorite_border,color: Colors.red,);
  bool favorite = false;
  String snackBarMessage = "Store added to favourites!";
  String inventoryTab = "Deals";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: (){home(context);},icon: Icon(Icons.home)),
        IconButton(onPressed: (){search(context);}, icon: Icon(Icons.search)),
        const Icon(Icons.account_circle)
      ],
      backgroundColor: Colors.deepOrange),
      body: Stack(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            
            children: [SizedBox(child: Image.network(widget.imageURL!,fit: BoxFit.fill,),
          height: size.height*.35, width: size.width),
          Container(child: DropdownButton(items:<String>['All','Deals', 'Candles', 'Toiletries','Teeth']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                inventoryTab = newValue!;
                widget.inventory = InventoryItem.organizeInventory(widget.inventory);
              });
            },
            value: inventoryTab,
            icon: const Icon(Icons.expand_more),
            ),
            padding: const EdgeInsets.only(top:35,left: 20),),

            SizedBox(
              //can't figure out how to make scroll view work here
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                separatorBuilder: (context, index) => const SizedBox(width: 16),
                itemCount: widget.inventory.length,

                itemBuilder: (context, index) {
                  final item = widget.inventory[index];

                  return InventoryItem(
                    item.name,
                    item.imageURL,
                    item.price
                  );
                },

              ),
            )

          ]),


          StoreInfoCard(name: widget.name,category: widget.category,
          distance: widget.distance,rating: widget.rating),
        
          
        ],
      ),
      //fave button
      floatingActionButton: Padding(child: FloatingActionButton(
        onPressed: (){
          final snackBar = SnackBar(
            content: Text(snackBarMessage,style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
            action: SnackBarAction(label: "undo", onPressed: (){
              setSnackbackState();
            }),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          setSnackbackState();
        },
        child: _icon,
        backgroundColor: Colors.white,
        splashColor: Colors.red,),
        padding: const EdgeInsets.only(bottom:500, right:150),),
    );
  }

  void setSnackbackState() {
    setState(() {
      if (favorite){
        _icon = const Icon(Icons.favorite_border,color: Colors.red,);
        favorite = false;
        snackBarMessage = "Store added to favourites!"; 
      } else {
        _icon = const Icon(Icons.favorite,color: Colors.red,);
        favorite = true;
        snackBarMessage = "Store removed to favourites.";
      }
    });
  }

  void home(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return const HomePage();
    }));
  }

  void search(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return const SearchBar();
    }));
  }

  
}

class Review {
  final String? name, preview;
  final int? rating;
  Review(this.name,this.preview,this.rating);
}