import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  dynamic data;
  SecondScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.data['name'])),
      ),
      body: Center(
        child: Container(
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.blueAccent
          ),
          child: Text(widget.data["Age"]),

        ),
      ),
    );
  }
}
