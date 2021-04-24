import 'package:flutter/material.dart';

class Entries extends StatelessWidget {
  final List<String> entries;
  // final = initialise only once (if new data is coming it will have to rebuild)

  Entries(this.entries); // this is a constructor(parameterized)
  // this saves incoming(this.entries) to variable with same name(entries)

  @override
  Widget build(BuildContext context) {
    return Column(
      children: entries // maps the variable entries(each element) to a card
          .map(
            (element) => Card(
              // simmilar to JS
              child: Column(
                children: <Widget>[
                  Image.asset('assets/distroslist.png'),
                  Text(
                    element,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                    // extract primary color
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
