import 'package:flutter/material.dart';

class StoreResult extends StatelessWidget {
  final String? imageURL, category, name;
  final double? distance;
  final int? rating;

  const StoreResult({Key? key,
    this.name,
    this.category,
    this.distance,
    this.imageURL,
    this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
  
}