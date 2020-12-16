import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg/pokemon/pokemon_event.dart';
import 'package:pokemon_tcg/pokemon/pokemon_state.dart';
import 'package:pokemon_tcg/repository/Pokemon_repository.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc() : super(PokemonStateUninitialized());

  @override
  Stream<PokemonState> mapEventToState(PokemonEvent event) async* {
    var pokemonRepo = PokemonRepository.instance;

    if (event is PokemonEventList) {
      pokemonRepo.refreshPokemon();
    }

    yield PokemonStateWithCards(pokemonRepo.cards);
  }
}