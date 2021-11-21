import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/searchbar.dart';

class StorePage extends StatefulWidget{
  final String? imageURL, category, name;
  final double? distance;
  final int? rating;

  const StorePage({Key? key,
    this.name,
    this.category,
    this.distance,
    this.imageURL,
    this.rating,
  }) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}



class _StorePageState extends State<StorePage> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    

    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: (){search(context);}, icon: Icon(Icons.search)),
        Icon(Icons.account_circle)
      ],
      backgroundColor: Colors.deepOrange),
      body: Stack(
        children: [
          Column(children: [Container(child: Image.network(widget.imageURL!,fit: BoxFit.fill,),
          height: size.height*.35, width: size.width),
          ]),


          Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .2,
              right: 20.0,
              left: 20.0),
          child: Container(
            height: 225.0,
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: Colors.white,
              elevation: 4.0,
              

              child: TabBarView(controller: _tabController,
          children: [
          Container( height: 200,
                  child: Column(children: [
                    ListTile(
                    title: const Text('Delivery',style: TextStyle(fontWeight: FontWeight.bold),),
                    trailing: IconButton(icon: const Icon(Icons.east), 
                    onPressed: () {_tabController.animateTo(1);}),
                  ),
                  Text(widget.name!, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  Text(widget.category!.toUpperCase()),
                  Container(child:Column(children:[Row(children: List.generate(widget.rating!, (index) => const Icon(Icons.star, color: Colors.amber))),
                  Row(children: [Icon(Icons.location_pin), Text(widget.distance.toString()+"km")]),
                  Row(children: [Icon(Icons.date_range), Text("Monday-Friday")]),
                  Row(children: [Icon(Icons.schedule), Text("10am-5pm")])],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,),
                  padding: EdgeInsets.only(top: 10, left: 20))
                  ],),
                ),
                Container(height: 200,
                  child: Column(children: [
                    ListTile(
                    leading: IconButton(icon: const Icon(Icons.west), 
                    onPressed: () {_tabController.animateTo(0);}),
                    title: Text('Info'),
                    trailing: IconButton(icon: const Icon(Icons.east), 
                    onPressed: () {_tabController.animateTo(2);}),
                  ),
                  Text("Placeholder for paragraph about store")
                  ],),
                ),
                Container( height: 200,
                  child: Column(children: [
                    ListTile(
                    leading: IconButton(icon: const Icon(Icons.west), 
                    onPressed: () {_tabController.animateTo(1);}),
                    title: Text('Review'),
                  ),
                  Text("Placeholder for reviews")
                  ],),
                )
        ])

            ),
          ),
        ),
        
          
        ],
      )
      
    );
  }

  void search(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return SearchBar();
    }));
  }
  
}