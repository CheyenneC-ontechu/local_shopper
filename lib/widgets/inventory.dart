import 'package:flutter/material.dart';
import '../constants.dart';

class InventoryItem extends StatelessWidget{
  final String? name,imageURL;
  final double? price;

  InventoryItem(this.name,this.imageURL,this.price, {Key? key}) : super(key: key);

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
            ]),
            
            
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(child: Row(children: [
                  Text("\$"+price.toString(),style: TextStyle(fontSize: 20),),
                  Container(child: ElevatedButton(onPressed: (){}, child: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(primary: Colors.green),),
                  padding: EdgeInsets.only(left: 50),)
                ],mainAxisAlignment: MainAxisAlignment.spaceBetween,), 
                padding: const EdgeInsets.all(3),)
              ],
            )
          ],
        ))
            
      ],
    );
  }

  static List<InventoryItem> organizeInventory(List<InventoryItem> list){
    //this is just rearranging the 2nd and 3rd items
    //convenient for how I ordered the list of items
    //probably fine for a prototype that will be shown from video
    List<InventoryItem> newList = [list[0], list[2], list[1]];
    return newList;
  }


}