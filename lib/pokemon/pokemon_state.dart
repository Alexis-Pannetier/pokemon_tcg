import 'package:pokemon_tcg/api/model/pokemon_cards_model.dart';

class PokemonState {}

class PokemonStateUninitialized extends PokemonState {}

class PokemonStateWithCards extends PokemonState {

  final PokemonCardsModel cards;

  PokemonStateWithCards(this.cards);
}
