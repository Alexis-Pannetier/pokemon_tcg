import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg/pokemon/pokemon_bloc.dart';
import 'package:pokemon_tcg/pokemon/pokemon_event.dart';

class Refresh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FlatButton(onPressed: () {
          print('refresh');
          BlocProvider.of<PokemonBloc>(context).add(PokemonEventList());
        },
            child: Text(
              'Actualiser',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue
        ),
      ],
    );
  }
}