//
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final products = [
    "Belt Bag",
    "Hang Top",
    "Ofice Code",
    "Bags",
    "Headphones",
    "Old Fashion",
    "Jeans",
    "Pants",
    "Short",
    "Shoe",
    "Man Shoe",
    "Bunnies",
    "Shopping Bags",
    "Carts",
    "Fashion",
    "Cameo",
    "StoneSky",
    "Traceme",
    "Gucci",
    "Fendi",
  ];

  final recentProducts = [
    "Fashion",
    "Cameo",
    "StoneSky",
    "Traceme",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    //actions for appbar

    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //leading  icon on the left of the app bar
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    //show some result base on selection
    return Center(
        child: Container(
            height: 100,
            width: 100,
            child: Card(
              color: Colors.red,
              child: Center(
                child: Text(query),
              ),
            )));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //show when some one searches for something
    final suggestionList = query.isEmpty
        ? recentProducts
        : products.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.location_city),
        title: RichText(
            text: TextSpan(
          text: suggestionList[index].substring(0, query.length),
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          children: [
            TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: Colors.grey))
          ],
        )),
      ),
      itemCount: suggestionList.length,
    );
  }
}

// class SearchPage extends StatefulWidget {
//   @override
//   _SearchPageState createState() => _SearchPageState();
// }
//
// class _SearchPageState extends State<SearchPage> {
//   String _result;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Search")),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             Text(_result ?? "", style: TextStyle(fontSize: 18)),
//             RaisedButton(
//               onPressed: () async {
//                 var result = await showSearch<String>(
//                   context: context,
//                   delegate: CustomDelegate(),
//                 );
//                 setState(() {
//                   _result = result;
//                 });
//               },
//               child: Text("Search"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class CustomDelegate<T> extends SearchDelegate<T> {
//   List<String> data = nouns.take(100).toList();
//
//   @override
//   List<Widget> buildActions(BuildContext context) => [IconButton(icon: Icon(Icons.clear), onPressed: () => query = '')];
//
//   @override
//   Widget buildLeading(BuildContext context) => IconButton(icon: Icon(Icons.chevron_left), onPressed: () => close(context, null));
//
//   @override
//   Widget buildResults(BuildContext context) => Container();
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     var listToShow;
//     if (query.isNotEmpty)
//       listToShow = data.where((e) => e.contains(query) && e.startsWith(query)).toList();
//     else
//       listToShow = data;
//
//     return ListView.builder(
//       itemCount: listToShow.length,
//       itemBuilder: (_, i) {
//         var noun = listToShow[i];
//         return ListTile(
//           title: Text(noun),
//           onTap: () => close(context, noun),
//         );
//       },
//     );
//   }
// }
