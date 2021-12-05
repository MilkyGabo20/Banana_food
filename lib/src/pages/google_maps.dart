import 'dart:ui';

import 'package:app_bananafood/src/widgets/back_button.dart';
import 'package:flutter/material.dart';

import 'package:app_bananafood/src/tabs/explore_tab.dart';

class Maps extends StatelessWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("images/mapas.jpg"),
              )
            ),
          ),
          Container(
                margin: EdgeInsets.only(top: 20.0),
                child: backButton(context, Colors.black),
              )
        ]
      ),
    );
}
}