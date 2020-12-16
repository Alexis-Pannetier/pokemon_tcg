import 'package:pokemon_tcg/api/model/pokemon_cards_model.dart';
import 'package:pokemon_tcg/api/pokemon_api.dart';

class PokemonRepository {
  static PokemonRepository instance = PokemonRepository();

  PokemonCardsModel cards;

  refreshPokemon () async {
    cards = await getPokemon();
  }
}