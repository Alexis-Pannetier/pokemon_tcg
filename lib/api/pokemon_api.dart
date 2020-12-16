import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:pokemon_tcg/api/model/pokemon_cards_model.dart';

const String URL = 'https://api.pokemontcg.io/v1/';
const String CARDS = URL + '/cards';

//Future<PokemonCardsModel> getPokemon() async {
 getPokemon() async {
  var response = await http.get(CARDS);

  Map<String, dynamic> responseJson = jsonDecode(response.body);
  PokemonCardsModel data = PokemonCardsModel.fromJSON(responseJson);

  return data;
}
