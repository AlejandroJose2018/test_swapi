import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:prueba_lamagica/swapi/models/model_personaje.dart';

class PersonajesApiProvider {

  static const API = "https://swapi.co/api/people";  

  Future<ModelPersonaje> fetchPersonajesList() async {
    
    final response = await http.get(API);

    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ModelPersonaje.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}