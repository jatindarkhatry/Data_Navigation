import 'package:data_navigation/routes_names.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Jatindar")),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, routeNames.screen_two,
            arguments: {
              "name":"Kunal",
              "Age" : "20"
            }
            );
          },
          child: Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.red
            ),
            child: Text("Server1"),

          ),
        ),
      ),
    );
  }
}
