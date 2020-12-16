class PokemonCardsModel {
  List cards;

  PokemonCardsModel(this.cards);

  PokemonCardsModel.fromJSON(Map<String, dynamic> json) {
    this.cards = json['cards'];

  }

}