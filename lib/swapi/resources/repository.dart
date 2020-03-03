import 'dart:async';

import 'package:prueba_lamagica/swapi/models/model_personaje.dart';
import 'package:prueba_lamagica/swapi/resources/personajes_api_provides.dart';


class Repository {
  final personajesApiProvider = PersonajesApiProvider();

  Future<ModelPersonaje> fetchAllPersonajes() => personajesApiProvider.fetchPersonajesList();
}