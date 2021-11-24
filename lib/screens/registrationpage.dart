import 'package:flutter/material.dart';

import 'homepage.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RegistrationPageState();

}

class _RegistrationPageState extends State<RegistrationPage> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  List entries = ["Apparel","Beauty","Books","Crafts","Home Goods","Jewelery",];
  bool _value = false;
  List<bool> _checked = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
    _checked = List<bool>.filled(entries.length, false);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body:Center(child: TabBarView(controller: _tabController,
        children: [
          //tab 0
          Container(child: Column(children: [
            const Text("Welcome",style: TextStyle(fontSize: 45,)),
            const Text("Please tell us your name", style: TextStyle(fontSize: 25),textAlign: TextAlign.center,),
            const TextField(decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,filled: true)),
            ElevatedButton(onPressed: (){_tabController.animateTo(1);}, child: Text("Next"),
            style: ElevatedButton.styleFrom(primary: Colors.grey.shade800))
          ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,),
          padding: EdgeInsets.fromLTRB(80,90,80,80),),

          //tab 1
          Container(child: 
          SingleChildScrollView(child: 
          ConstrainedBox(constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
            child:Column(children: [
            const Text("Hi there, Chiara",style: TextStyle(fontSize: 35,)),
            const Text("Before we get started, we have a couple of questions for you.\n\nFirst, how old are you?",style: TextStyle(fontSize: 25,)),
            const TextField(decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,filled: true, labelText: "My age is...")),
            
            
            
            Row(children: [
              ElevatedButton(onPressed: (){_tabController.animateTo(0);}, child: Text("Back"),
            style: ElevatedButton.styleFrom(primary: Colors.grey.shade800)),
              ElevatedButton(onPressed: (){_tabController.animateTo(2);}, child: Text("Next"),
            style: ElevatedButton.styleFrom(primary: Colors.grey.shade800))],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,)
            
          ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,)),
          padding: EdgeInsets.fromLTRB(80,10,80,0)),
          alignment: Alignment.center,),

          //tab 2
          Container(child: Column(children: [
            const Text("What are you shopping for?",style: TextStyle(fontSize: 25,)),
            Container(child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.deepOrange[100],
                  child: CheckboxListTile(
                    title: Text(entries[index]),
                    value: _checked[index],
                    onChanged: (bool? value) {
                      setState(() {
                        _checked[index] = value!;
                      });
                    },
                  ),
                );
              }
            ),height: 400,
            padding: EdgeInsets.only(top:40),),
            
            Row(children: [
              ElevatedButton(onPressed: (){_tabController.animateTo(1);}, child: Text("Back"),
            style: ElevatedButton.styleFrom(primary: Colors.grey.shade800)),
              ElevatedButton(onPressed: (){_tabController.animateTo(3);}, child: Text("Next"),
            style: ElevatedButton.styleFrom(primary: Colors.grey.shade800))],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,)
            
          ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,),
          padding: EdgeInsets.fromLTRB(80,90,80,80)),

          //tab 3
          Container(child: Column(children: [
            Text("Great!\nThat's all for now, are you ready to sign up?",style: TextStyle(fontSize: 25,)),
            Row(children: [
              ElevatedButton(onPressed: (){_tabController.animateTo(2);}, child: Text("Back"),
            style: ElevatedButton.styleFrom(primary: Colors.grey.shade800)),
              ElevatedButton(onPressed: (){home(context);}, child: Text("Finish"),
            style: ElevatedButton.styleFrom(primary: Colors.green))],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,)
          
          ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,),
          padding: EdgeInsets.fromLTRB(60,80,60,30),)
            
          ],))
              
      );
  }

  void home(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return const HomePage();
    }));
  }
  
}