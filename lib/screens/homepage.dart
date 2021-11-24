import 'package:flutter/material.dart';
import 'package:local_shopper/widgets/category_card.dart';
import 'package:local_shopper/widgets/store_card.dart';
import '../constants.dart';
import '../widgets/searchbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text("Local Shopper"),
        actions: [
          IconButton(icon: const Icon(Icons.home),
            onPressed: (){}//already at home page
          ),

          IconButton(icon: const Icon(Icons.search),
            onPressed: () => search(context),
          ),

          IconButton(icon: const Icon(Icons.account_circle),
            onPressed: () => print("Account settings not yet implemented"),
          ),
        ],
        automaticallyImplyLeading: false,
      ),

      body: CustomScrollView(
        slivers: [
          //list of stores
          const SliverToBoxAdapter(child: HeaderWidget(text: "Popular Near You")),
          SliverToBoxAdapter(
            child: SizedBox(
              height: size.height/3,
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                separatorBuilder: (context, index) => const SizedBox(width: 16),
                itemCount: stores.length,
                itemBuilder: (context, index) {
                  final storefront = stores[index];

                  return StoreInfo(
                    name: storefront.name,
                    category: storefront.category,
                    distance: storefront.distance,
                    rating: storefront.rating,
                    imageURL: storefront.url,
                  );
                },
              )
            ),
          ),

          //categories grid
          const SliverToBoxAdapter(child: HeaderWidget(text: "Categories")),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              delegate: SliverChildListDelegate(List.generate(categories.length, (index) {
                final category = categories[index];

                return CategoryInfo(
                  name: category.name,
                  total: category.total,
                  imageURL: category.url,
                );
              })),
            ),
          ),
        ]
      )
    );
  }

  void search(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchBar()));
  }
}

class HeaderWidget extends StatelessWidget {
  final String? text;
  const HeaderWidget({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Text(text!, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
    );
  }
}