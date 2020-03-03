class ModelPersonaje {
  int _count;
  String _next;
  dynamic _previous;
  List<_Result> _results = [];

  ModelPersonaje.fromJson(Map<String, dynamic> parsedJson){
    print(parsedJson['results'].length);
    _count = parsedJson['count'];
    _next  = parsedJson['next '];
    _previous = parsedJson['previous'];    
    List<_Result> temp = [];

    for (int i = 0; i < parsedJson['results'].length; i++) {
      _Result result = _Result(parsedJson['results'][i]);
      temp.add(result);
    }
    _results = temp;
  }

  List<_Result> get results => _results;

  int get count => _count;

  String get next => _next;

  dynamic get previous => _previous;

}

class _Result {
  
  String _name;
  String _height;
  String _mass;
  String _hair_color;
  String _skin_color;  
  String _eye_color;
  String _birth_year;
  String _gender;
  String _homeworld;
  List<String> _films = [];
  List<String> _species = [];
  List<String> _vehicles = [];
  List<String> _starships = [];
  String _created;
  String _edited;
  String _url;

  _Result(result) {
    _name = result['name'];
    _height = result['height'];
    _mass = result['mass'];
    _hair_color = result['hair_color'];
    _skin_color = result['skin_color'];
    _eye_color = result['eye_color'];
    _birth_year = result['birth_year'];
    _gender = result['gender'];
    _homeworld = result['homeworld'];
    for (int i = 0; i < result['films'].length; i++) {
      _films.add(result['films'][i]);
    }
    for (int i = 0; i < result['species'].length; i++) {
      _species.add(result['species'][i]);
    }
    for (int i = 0; i < result['vehicles'].length; i++) {
      _vehicles.add(result['vehicles'][i]);
    }
    for (int i = 0; i < result['starships'].length; i++) {
      _starships.add(result['starships'][i]);
    }
    _created = result['created'];
    _edited = result['edited'];
    _url = result['url'];
  }

  String get name => _name;

  String get height => _height;  

  String get mass => _mass;

  String get hair_color => _hair_color;

  String get skin_color => _skin_color;

  String get eye_color => _eye_color;

  String get birth_year => _birth_year;

  String get gender => _gender;

  String get homeworld => _homeworld;

  List<String> get films => _films;
  List<String> get species => _species;
  List<String> get vehicles => _vehicles;
  List<String> get starships => _starships;

  String get created => _created;

  String get edited => _edited;

  String get url => _url;

}


