
import 'package:flutter/material.dart';
import 'package:local_shopper/screens/homepage.dart';
import 'package:local_shopper/widgets/storeresults.dart';
import 'searchbar.dart';
import '../constants.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  String sortBy = 'Best Match';

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: (){home(context);},icon: Icon(Icons.home)),
        IconButton(onPressed: (){search(context);}, icon: const Icon(Icons.search)),
        const Icon(Icons.account_circle)
      ],
      backgroundColor: Colors.deepOrange),
      

      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: HeaderWidget(text: "Results for: jacket")),

            SliverToBoxAdapter(child: 
            Container(padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
              width: 80,
              child: DropdownButton(items:<String>['Best Match', 'Price', 'Distance']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                sortBy = newValue!;
                storeResults = StoreResult.sortResults(storeResults, sortBy);
              });
            },
            value: sortBy,
            icon: const Icon(Icons.expand_more),
            underline: Container(height: 0),
            )),),

          SliverToBoxAdapter(
            child: SizedBox(
              
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                separatorBuilder: (context, index) => const SizedBox(width: 16),
                itemCount: stores.length,

                itemBuilder: (context, index) {
                  final storefront = storeResults[index];

                  return StoreResult(
                    name: storefront.name,
                    category: storefront.category,
                    distance: storefront.distance,
                    rating: storefront.rating,
                    imageURL: storefront.url,
                    price: storefront.price,
                  );
                },

              ),
            ),
          )
        ],
      )
    );
  }

  void home(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return const HomePage();
    }));
  }

  void search(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return SearchBar();
    }));
  }
  
}