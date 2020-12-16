import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg/pokemon/pokemon_bloc.dart';
import 'package:pokemon_tcg/pokemon/pokemon_state.dart';

class CardsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
        BlocBuilder<PokemonBloc, PokemonState>(builder: (context, state) {

          Object cards;
          if (state is PokemonStateWithCards) {
            cards = state.cards;
            print(cards);
            for ( var i in cards ) Text(i.name.toString());
          }
          return Text('test');
        })
      ],
    );
  }
}
