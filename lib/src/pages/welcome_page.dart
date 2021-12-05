import 'dart:ui';

import 'package:app_bananafood/src/pages/login_page.dart';
import 'package:app_bananafood/src/pages/sign_up.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'
                )
              )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.6),
              ),
              ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.png', width: 300,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text('¡BIENVENIDO(A)!', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0
                )),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text('Inicia sesión o regístrate ahora...', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0
                )),
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color:Theme.of(context).accentColor,
                  child: Text('Inicia Sesión', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0
                  ))
                ),
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color: Colors.greenAccent,
                  child: Text('Regístrate', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0
                  ))
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}