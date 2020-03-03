import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Utiles/appTheme.dart';
import 'swapi/ui/personajes_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      
      statusBarColor: AppTheme.mainColor1,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness:

          Platform.isAndroid ? Brightness.dark : Brightness.dark,
      systemNavigationBarColor:AppTheme.mainColor1,
      systemNavigationBarDividerColor: AppTheme.mainColor1,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Star Wars',
      home: MovieList(),
    );
  }
}

