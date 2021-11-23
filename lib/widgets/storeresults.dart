
import 'package:flutter/material.dart';
import 'package:local_shopper/constants.dart';
import 'package:local_shopper/widgets/store_card.dart';
import 'package:local_shopper/screens/storepage.dart';

class StoreResult extends StatelessWidget {
  final String? imageURL, category, name;
  final double? distance;
  final int? rating, price;

  const StoreResult({Key? key,
    this.name,
    this.category,
    this.distance,
    this.imageURL,
    this.rating,
    this.price //number from 1-3
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: Row(
      children: [
        Container(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 150,width: 150,
          child: Image.network(imageURL!,fit:BoxFit.fill)),

        SizedBox(width: MediaQuery.of(context).size.width/2, 
        height: MediaQuery.of(context).size.height/4,
        
        child:Column( crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(name!,style: const TextStyle(fontWeight:FontWeight.bold,fontSize: 20)),
            Text(category!.toUpperCase()),]),
            
            Row(children:List.generate(price!, (index) => const Icon(Icons.paid, color: Colors.green))),

            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: List.generate(rating!, (index) => const Icon(Icons.star, color: Colors.amber))),
                Container(child: Row(children: [
                  const Icon(Icons.location_pin), Text(distance.toString()+"km")
                ],),decoration: BoxDecoration(border: Border.all()), 
                padding: const EdgeInsets.all(3),)
              ],
            )
          ],
        ))
            
      ],
    ), onTap: (){Navigator.push(context, MaterialPageRoute(
        builder: (context) => StorePage(name: name,
    category: category,
    distance: distance,
    imageURL: imageURL,
    rating: rating,
    inventory: inventoryDressUp,)));},);
  }

  static List<Storefront> sortResults (List<Storefront> list,String sortMethod){
    if (sortMethod == "Best Match"){
      return list;
    } else if (sortMethod == "Price"){
      List<Storefront> newList = [list[2],list[3],list[0],list[1]];
      return newList;
    } else if (sortMethod == "Distance"){
      return list;
    }
    else {
      return list;
    }
  }
  
}