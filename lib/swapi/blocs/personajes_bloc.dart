import 'package:prueba_lamagica/swapi/models/model_personaje.dart';

import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';


class PersonajesBloc {
  final _repository = Repository();
  final _personajesFetcher = PublishSubject<ModelPersonaje>();

  Stream<ModelPersonaje> get allPersonajes => _personajesFetcher.stream;

  fetchAllPersonajes() async {
    ModelPersonaje itemModel = await _repository.fetchAllPersonajes();
    _personajesFetcher.sink.add(itemModel);
  }

  dispose() {
    _personajesFetcher.close();
  }
}

final bloc = PersonajesBloc();