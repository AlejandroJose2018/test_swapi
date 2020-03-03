import 'package:flutter/material.dart';
import 'package:prueba_lamagica/Utiles/appTheme.dart';

class DetailsPersonaje extends StatefulWidget {
  
  final String name;
  final String height;
  final String birth_year;
  final String genre;
  final String hair_color;


  DetailsPersonaje({Key key, this.name, this.height, this.birth_year, this.genre, this.hair_color,}) : super(key: key);

  @override
  _DetailsPersonajeState createState() => _DetailsPersonajeState();
}

class _DetailsPersonajeState extends State<DetailsPersonaje> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         backgroundColor: AppTheme.mainColor1,
         title: Center(
           child: Text(widget.name),
         ),
       ),
       body: Container(
         margin: EdgeInsets.all(10),
         child: Padding(
              padding: EdgeInsets.only(top: 5),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[                                                      
                  DatosPersonaje(title: 'Nombre Completo', data: widget.name,),
                  DatosPersonaje(title: 'Altura', data: widget.height,),
                  DatosPersonaje(title: 'Año de Nacimiento', data: widget.birth_year,),
                  DatosPersonaje(title: 'Género', data: widget.genre,),
                  DatosPersonaje(title: 'Color de cabello', data: widget.hair_color),
                  
                 
                ],
              )
          ),

       ),
    );
  }
}


class DatosPersonaje extends StatelessWidget {
  
  final String title;
  final String data;

  DatosPersonaje({Key key, this.title, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Padding(
              padding:EdgeInsets.only(top: 20,), 
              child:
                  Text(this.title,  style:TextStyle(color:Colors.black87, fontSize: 14))
            ),
            Padding(
              padding:EdgeInsets.only(top: 5), 
              child:
                Text(this.data ,  style:TextStyle(color:Colors.black38, fontSize: 16)),
            ),
            

          ]
      );
  }
}