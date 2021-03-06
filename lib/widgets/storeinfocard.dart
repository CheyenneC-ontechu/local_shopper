import 'package:flutter/material.dart';
import 'package:local_shopper/constants.dart';

class StoreInfoCard extends StatefulWidget {
  final String? category, name;
  final double? distance;
  final int? rating;

  const StoreInfoCard({Key? key,
    this.name,
    this.category,
    this.distance,
    this.rating,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StoreInfoCardState();

}

class _StoreInfoCardState extends State<StoreInfoCard> with SingleTickerProviderStateMixin{
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
    return Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .07,
              right: 10.0,
              left: 10.0),
          child: Container(
            height: 225.0,
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: Colors.white,
              elevation: 4.0,
              
              child: TabBarView(controller: _tabController,
            children: [
              //info
              Container( height: 200,
                  child: Column(children: [
                    ListTile(
                    title: const Text('Information',style: TextStyle(fontWeight: FontWeight.bold),),
                    trailing: IconButton(icon: const Icon(Icons.east,color: Colors.black,), 
                    onPressed: () {_tabController.animateTo(1);}),
                  ),
                  Text(widget.name!, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  Text(widget.category!.toUpperCase()),
                  Container(child:Column(children:[Row(children: List.generate(widget.rating!, (index) => const Icon(Icons.star, color: Colors.amber))),
                  Row(children: [Icon(Icons.location_pin), Text(widget.distance.toString()+"km")]),
                  Row(children: const [Icon(Icons.date_range), Text("Monday-Friday")]),
                  Row(children: const [Icon(Icons.schedule), Text("10am-5pm")])],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,),
                  padding: EdgeInsets.only(top: 10, left: 20))
                  ],),
                ),

                //about
                Container(height: 200,
                  child: Column(children: [
                    ListTile(
                    leading: IconButton(icon: const Icon(Icons.west,color: Colors.black), 
                    onPressed: () {_tabController.animateTo(0);}),
                    title: const Text('About',style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: IconButton(icon: const Icon(Icons.east,color: Colors.black), 
                    onPressed: () {_tabController.animateTo(2);}),
                  ),
                  Container(child: Row(children: const [Icon(Icons.phone,color: Colors.black,),
                  Text("(905) 721-8668",style: TextStyle(fontSize: 15))],),
                  padding: const EdgeInsets.only(left:10),),

                  Container(child: Row(children: const [Icon(Icons.archive), 
                  Text("Curbside Pick-up Available",style: TextStyle(fontSize: 15))],),
                  padding: const EdgeInsets.only(left:10)),
                  
                  Container(child: Text(getInfo(),style: TextStyle(fontSize: 16),), 
                  padding: const EdgeInsets.fromLTRB(10,20,10,0),)
                  ],),
                ),

                //review
                SizedBox( height: 200,
                  child: Column(children: [
                    ListTile(
                    leading: IconButton(icon: const Icon(Icons.west,color: Colors.black), 
                    onPressed: () {_tabController.animateTo(1);}),
                    title: Container(child:const Text('Reviews',style: TextStyle(fontWeight: FontWeight.bold)),padding: EdgeInsets.all(4),),
                  ),
                  SizedBox(child: ListView.separated(
                    itemBuilder: (context,index){
                      return Row(children:[
                        Container(child: Column(children:[
                          Text(reviews[index].name!),
                          Row(children: [
                            const Icon(Icons.star,color:Colors.amber),
                            Text(reviews[index].rating.toString()+"/5")
                          ],mainAxisAlignment: MainAxisAlignment.center,)
                        ]),
                        width: 80,padding: const EdgeInsets.only(right: 5),),
                        Flexible(child: Text(reviews[index].preview!))]);
                    }, 
                    separatorBuilder: (context, index) => const Divider(color: Colors.black54,), 
                    itemCount: reviews.length),
                    height: 150)
                  ],),
                )
        ])
            
            ),
          ),
        );
  }

  String getInfo(){
    return "Welcome to your home Sweet Home! "
    "Here we sell soaps, candles, towels, and even toothpaste. "
    "We believe a sweet smell makes a sweet home,"
    "so let's help your home be as sweet as you <3.  ";
  }

}