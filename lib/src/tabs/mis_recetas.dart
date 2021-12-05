import 'package:flutter/material.dart';

class MisRecetas extends StatefulWidget {
  MisRecetas({Key? key}) : super(key: key);

  @override
  _MisRecetasState createState() => _MisRecetasState();
}

class _MisRecetasState extends State<MisRecetas> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Mis recetas'),
      ),
    );
  }
}