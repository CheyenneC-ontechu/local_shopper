import 'package:flutter/material.dart';

class CategoryInfo extends StatelessWidget {
  final String? name, imageURL;
  final int? total;

  const CategoryInfo({Key? key,
    this.name,
    this.total,
    this.imageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //category name title
        Stack(children: [
          Text(name!.toUpperCase(), style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            foreground: Paint()..style = PaintingStyle.stroke..strokeWidth = 5,
          )),

          Text(name!.toUpperCase(), style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            foreground: Paint()..style = PaintingStyle.fill..color = Colors.white,
          )),
        ]),

        //total stores in category
        Stack(children: [
          Text("$total stores", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            foreground: Paint()..style = PaintingStyle.stroke..strokeWidth = 4,
          )),

          Text("$total stores", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              foreground: Paint()..style = PaintingStyle.fill..color = Colors.white,
          )),
        ]),
      ],
    ),

    decoration: BoxDecoration(
      border: Border.all(),
      image: DecorationImage(image: NetworkImage(imageURL!)),
    ));
  }
}

class StoreCategory {
  final String? name, url;
  final int? total;

  StoreCategory(this.name, this.total, this.url);
}