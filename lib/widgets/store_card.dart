import 'package:flutter/material.dart';
import 'package:local_shopper/screens/storepage.dart';

class StoreInfo extends StatelessWidget {
  final String? imageURL, category, name;
  final double? distance;
  final int? rating;

  const StoreInfo({Key? key,
    this.name,
    this.category,
    this.distance,
    this.imageURL,
    this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: Container(
      //store preview image
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: NetworkImage(imageURL!),
          fit: BoxFit.fill,
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //store category
          Stack(children: [
            Text(category!.toUpperCase(), style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              foreground: Paint()..style = PaintingStyle.stroke..strokeWidth = 4,
            )),

            Text(category!.toUpperCase(), style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                foreground: Paint()..style = PaintingStyle.fill..color = Colors.white,
            )),
          ]),

          //store name
          Stack(children: [
            Text(name!, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              foreground: Paint()..style = PaintingStyle.stroke..strokeWidth = 4,
            )),

            Text(name!, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              foreground: Paint()..style = PaintingStyle.fill..color = Colors.white,
            )),
          ]),

          Container(padding: const EdgeInsets.all(7),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //store rating (in no of stars)
                Row(children: List.generate(rating!, (index) => const Icon(Icons.star, color: Colors.amber))),
                const SizedBox(width: 100),

                //store distance in meters
                Row(children: [
                  const Icon(Icons.location_pin),
                  Text("$distance km", style: const TextStyle(fontWeight: FontWeight.bold)),
                ]),
              ]
            ),

            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border.symmetric(),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
          ),
        ]
    )),
    onTap: (){Navigator.push(context, MaterialPageRoute(
        builder: (context) => StorePage(name: name,
    category: category,
    distance: distance,
    imageURL: imageURL,
    rating: rating,)));},
    );
  }
}

class Storefront {
  final String? url, category, name;
  final double? distance;
  final int? rating;

  Storefront(this.name, this.category, this.distance, this.rating, this.url);
}