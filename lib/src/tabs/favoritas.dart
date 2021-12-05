import 'package:flutter/material.dart';

class Favorita extends StatefulWidget {
  Favorita({Key? key}) : super(key: key);

  @override
  _FavoritaState createState() => _FavoritaState();
}

class _FavoritaState extends State<Favorita> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Mis favoritas'),
      ),
    );
  }
}