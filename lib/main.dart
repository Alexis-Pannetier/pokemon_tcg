import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg/pokemon/pokemon_bloc.dart';
import 'package:pokemon_tcg/page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<PokemonBloc>(
        create: (_) => PokemonBloc(),
        child: HomePage(),
      ),
    );
  }
}
