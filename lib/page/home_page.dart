import 'package:flutter/material.dart';
import 'package:pokemon_tcg/page/widget/cards_list.dart';
import 'package:pokemon_tcg/page/widget/refresh.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pokemon TCG'),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Refresh(),
              // CardsList()
            ],
          )
        ],
      ),
    );
  }
}
