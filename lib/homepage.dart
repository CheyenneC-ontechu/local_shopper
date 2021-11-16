import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'searchbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  //product images
  final String imageURL_soap = 'https://images.unsplash.com/photo-1603533626135-f3e3229eb018?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
  //store images
  final String imageURL_utensils = 'https://images.unsplash.com/photo-1466027575040-12134f1397fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
  final String imageURL_makeup = 'https://images.unsplash.com/photo-1608979048467-6194dabc6a3d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
  final String imageURL_clothes = 'https://images.unsplash.com/photo-1558769132-92e717d613cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80';
  final String imageURL_nailpolish = 'https://images.unsplash.com/photo-1534131092884-4a0a9d19dff6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
  //category images
  final String imageURL_beauty = 'https://images.unsplash.com/photo-1596462502278-27bfdc403348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
  final String imageURL_apparel = 'https://images.unsplash.com/photo-1617405872665-c6aa7ab50895?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=591&q=80';
  final String imageURL_homegoods = 'https://images.unsplash.com/photo-1595219702653-532c84e21e46?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80';
  final String imageURL_accessories = 'https://images.unsplash.com/photo-1614606140752-7ebc097a67ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: (){search(context);}, icon: Icon(Icons.search))
      ],
      backgroundColor: Colors.green,
      automaticallyImplyLeading: false,),
      body: Center(child:ListView( shrinkWrap:true,
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          Container(child: Text("Popular Near You",
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          padding: EdgeInsets.fromLTRB(0, 8, 0, 2),),

          //grid of stores
          Container(child:SizedBox(height: MediaQuery.of(context).size.height * (6.5/10),
          child: GridView.count(crossAxisCount: 2, crossAxisSpacing: 5,mainAxisSpacing: 5,
          children: [
            //1st store
            Expanded(child: Container(child: 
            Column(children: [
              Stack(children: [
                //foreground
                Text("-Beauty-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=4),),
                //background
              Text("-Beauty-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.white),)
              ],),

              Stack(children: [
                //foreground
                Text("Sandra's Cosmetics",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=4),),
                //background
              Text("Sandra's Cosmetics",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.white),)
              ],),
            
              Container(child:Row(children: [
                Row(children: [Icon(Icons.star,color: Colors.amber),Icon(Icons.star,color: Colors.amber),
                Icon(Icons.star,color: Colors.amber),Icon(Icons.star,color: Colors.amber)],
                ),
                Row(children: [
                  Icon(Icons.location_pin),Text("250m",style: TextStyle(fontWeight: FontWeight.bold),)
                ],)
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween,),
              decoration: BoxDecoration(color: Colors.white,border: Border.symmetric(),
              borderRadius: BorderRadius.all(Radius.circular(20))),padding: EdgeInsets.all(7),)
              
            ],crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween),

            decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(image: NetworkImage(imageURL_makeup))),)
            ),

            //2nd store
            Expanded(child: Container(child: 
            Column(children: [
              Stack(children: [
                //foreground
                Text("-Home Goods-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=4),),
                //background
              Text("-Home Goods-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.white),)
              ],),

              Stack(children: [
                //foreground
                Text("Home Sweet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=4),),
                //background
              Text("Home Sweet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.white),)
              ],),
            
              Container(child:Row(children: [
                Row(children: [Icon(Icons.star,color: Colors.amber),Icon(Icons.star,color: Colors.amber),
                Icon(Icons.star,color: Colors.amber),Icon(Icons.star,color: Colors.amber)],
                ),
                Row(children: [
                  Icon(Icons.location_pin),Text("1.5km",style: TextStyle(fontWeight: FontWeight.bold),)
                ],)
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween,),
              decoration: BoxDecoration(color: Colors.white,border: Border.symmetric(),
              borderRadius: BorderRadius.all(Radius.circular(20))),padding: EdgeInsets.all(7),)
              
            ],crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween),

            decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(image: NetworkImage(imageURL_utensils))),)
            ),

            //3rd store
            Expanded(child: Container(child: 
            Column(children: [
              Stack(children: [
                //foreground
                Text("-Clothes-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=4),),
                //background
              Text("-Clothes-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.white),)
              ],),

              Stack(children: [
                //foreground
                Text("Dress Up Show Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=4),),
                //background
              Text("Dress Up Show Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.white),)
              ],),
            
              Container(child:Row(children: [
                Row(children: [Icon(Icons.star,color: Colors.amber),Icon(Icons.star,color: Colors.amber),
                Icon(Icons.star,color: Colors.amber),Icon(Icons.star_half,color: Colors.amber,)],
                ),
                Row(children: [
                  Icon(Icons.location_pin),Text("900m",style: TextStyle(fontWeight: FontWeight.bold),)
                ],)
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween,),
              decoration: BoxDecoration(color: Colors.white,border: Border.symmetric(),
              borderRadius: BorderRadius.all(Radius.circular(20))),padding: EdgeInsets.all(7),)
              
            ],crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween),

            decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(image: NetworkImage(imageURL_clothes))),)
            ),
            //4th store
            Expanded(child: Container(child: 
            Column(children: [
              Stack(children: [
                //foreground
                Text("-Beauty-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=4),),
                //background
              Text("-Beauty-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.white),)
              ],),

              Stack(children: [
                //foreground
                Text("Make Your World",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=4),),
                //background
              Text("Make Your World",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.white),)
              ],),
            
              Container(child:Row(children: [
                Row(children: [Icon(Icons.star,color: Colors.amber),Icon(Icons.star,color: Colors.amber),
                Icon(Icons.star,color: Colors.amber),Icon(Icons.star,color: Colors.amber)],
                ),
                Row(children: [
                  Icon(Icons.location_pin),Text("1km",style: TextStyle(fontWeight: FontWeight.bold),)
                ],)
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween,),
              decoration: BoxDecoration(color: Colors.white,border: Border.symmetric(),
              borderRadius: BorderRadius.all(Radius.circular(20))),padding: EdgeInsets.all(7),)
              
            ],crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween),

            decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(image: NetworkImage(imageURL_nailpolish))),)
            ),
          ],),
          ),
          padding: EdgeInsets.all(8),),

          Container(child: Text("Categories",
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.black)),
          padding: EdgeInsets.fromLTRB(2, 8, 0, 2),),
          
          //grid of categories
          Container(child:SizedBox(height: MediaQuery.of(context).size.height * (6.5/10),
          child: GridView.count(crossAxisCount: 2, crossAxisSpacing: 10,mainAxisSpacing: 10,padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
          children: [
            //1st category
            Expanded(child: Container(child: 
            Column(children: [
              Stack(children: [
                //stroke
                Text("BEAUTY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=5),),
                //fill
              Text("BEAUTY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.pink.shade200),)
              ],),

              Stack(children: [
                //stroke
                Text("50 stores",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=4),),
                //fill
              Text("50 stores",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.white),)
              ],),
            ],crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly),
            decoration: BoxDecoration(border: Border.all(),
            image: DecorationImage(image: NetworkImage(imageURL_beauty))),)
            ),

            //2nd category
            Expanded(child: Container(child: 
            Column(children: [
              Stack(children: [
                //stroke
                Text("APPAREL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=5),),
                //fill
              Text("APPAREL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.blue.shade300),)
              ],),

              Stack(children: [
                //stroke
                Text("31 stores",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=4),),
                //fill
              Text("31 stores",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.white),)
              ],),
            ],crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly),
            decoration: BoxDecoration(border: Border.all(),
            image: DecorationImage(image: NetworkImage(imageURL_apparel))),)
            ),

            //3rd category
            Expanded(child: Container(child: 
            Column(children: [
              Stack(children: [
                //stroke
                Text("HOME GOODS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=5),),
                //fill
              Text("HOME GOODS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.brown.shade200),)
              ],),

              Stack(children: [
                //stroke
                Text("22 stores",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=4),),
                //fill
              Text("22 stores",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.white),)
              ],),
            ],crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly),
            decoration: BoxDecoration(border: Border.all(),
            image: DecorationImage(image: NetworkImage(imageURL_homegoods))),)
            ),
            //4th category
            Expanded(child: Container(child: 
            Column(children: [
              Stack(children: [
                //stroke
                Text("ACCESSORIES",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=5),),
                //fill
              Text("ACCESSORIES",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.purple.shade200),)
              ],),

              Stack(children: [
                //stroke
                Text("13 stores",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=4),),
                //fill
              Text("13 stores",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,
              foreground: Paint()..style=PaintingStyle.fill..color=Colors.white),)
              ],),
            ],crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly),
            decoration: BoxDecoration(border: Border.all(),
            image: DecorationImage(image: NetworkImage(imageURL_accessories))),)
            ),
            

          ],),
          ),
          padding: EdgeInsets.all(8),),
        ],
      ))
    );
  }

  void search(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return SearchBar();
    }));
  }

}