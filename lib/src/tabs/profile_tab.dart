import 'package:app_bananafood/src/tabs/Components/body.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.greenAccent,
      leading: SizedBox(),
      title: Text(
        'Perfil',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[30]),
      ),        
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Icon(
            Icons.settings,
            color: Colors.grey[50],
          ),
        ),          
      ],
    );
  }
}