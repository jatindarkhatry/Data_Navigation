import 'package:data_navigation/routes_names.dart';
import 'package:data_navigation/screen_one.dart';
import 'package:data_navigation/screen_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes{

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name) {
      case routeNames.screen_one:
        return MaterialPageRoute(builder: (context) => FirstScreen());
      case routeNames.screen_two:
        return MaterialPageRoute(builder: (context) => SecondScreen(data: settings.arguments as Map,));
      default:
        return MaterialPageRoute(builder: (context){
          return Scaffold(
            body: Text("No Routes"),
          );
        });
    }

  }
}