class PokemonCardModel {
  String id;
  String name;
  String imageUrl;
  int nationalPokedexNumber;
  String imgUrl;
  String type;
  int hp;

  PokemonCardModel(
      this.id,
      this.name,
      this.imageUrl,
      this.nationalPokedexNumber,
      this.imgUrl,
      this.type,
      this.hp,
      );

  PokemonCardModel.fromJSON(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.imageUrl = json['imageUrl'];
    this.nationalPokedexNumber = json['nationalPokedexNumber'];
    this.type = json['type'];
    this.hp = json['hp'];
  }

}