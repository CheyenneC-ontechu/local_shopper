import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_shopper/widgets/searchresult.dart';

class SearchBar extends StatefulWidget{
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SearchBarState();


}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Container(child:
      Center(child: TextField(
        decoration: InputDecoration(
          hintText: "What are you looking for?",
          prefixIcon: IconButton(icon: const Icon(Icons.search,color: Colors.black,),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchResults()));
          },),
          suffixIcon: const Icon(Icons.clear, color: Colors.black),
        ),
      )),
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10))),
      backgroundColor: Colors.deepOrange,),

      body: const Center(child: Icon(Icons.search,size: 200, color: Colors.grey))
    );
  }
  
}