import 'package:flutter/material.dart';
import 'package:prueba_lamagica/Utiles/appTheme.dart';
import 'package:prueba_lamagica/Utiles/responsive.dart';
import 'package:prueba_lamagica/swapi/blocs/personajes_bloc.dart';
import 'package:prueba_lamagica/swapi/models/model_personaje.dart';
import 'package:prueba_lamagica/swapi/ui/detail_personaje.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    bloc.fetchAllPersonajes();
    final responsive = Responsive(context);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.mainColor1,
        title: Center(child: Text('STAR WARS', style: TextStyle(color: Colors.white, fontSize: responsive.ip(3.5)),)),
      ),
      body: StreamBuilder(
        stream: bloc.allPersonajes,
        builder: (context, AsyncSnapshot<ModelPersonaje> snapshot) {
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildList(AsyncSnapshot<ModelPersonaje> snapshot) {
    return GridView.builder(
        itemCount: snapshot.data.results.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppTheme.mainColor2,
                        AppTheme.mainColor2,
                      ],
                      begin: FractionalOffset(0.2, 0.0),
                      end: FractionalOffset(1.0, 0.6),
                      stops: [0.0, 0.6],
                      tileMode: TileMode.mirror
                  ),                    
                     borderRadius: BorderRadius.all(Radius.circular(15)),
                    shape: BoxShape.rectangle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(                        
                          blurRadius: 15.0,
                          offset: Offset(0.7, 7.0)
                      )

                    ],
                  ),
                  child: Center(
                    child: Text(snapshot.data.results[index].name,
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  ),
                  onTap: (){                    
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => 
                        DetailsPersonaje(
                          name: snapshot.data.results[index].name,
                          height: snapshot.data.results[index].height,
                          birth_year: snapshot.data.results[index].birth_year,
                          genre: snapshot.data.results[index].gender,
                          hair_color: snapshot.data.results[index].hair_color,
                        )),
                    );
                  },
                );          
        });
  }
}

