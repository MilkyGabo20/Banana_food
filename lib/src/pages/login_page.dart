//import 'dart:ffi';

import 'package:app_bananafood/src/colors/colors.dart';
import 'package:app_bananafood/src/pages/forgot_password.dart';
import 'package:app_bananafood/src/tabs/tabs_page.dart';
import 'package:app_bananafood/src/pages/sign_up.dart';
import 'package:app_bananafood/src/widgets/back_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                width: double.infinity,
                height: 350.0,
                fit: BoxFit.cover,
                image: NetworkImage('https://images.unsplash.com/photo-1515683359900-6922e4964be1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: backButton(context, Colors.black),
              )
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -20.0),
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0)),
              child: Padding(padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    Text('Bienvenido de vuelta', style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0
                    )),
                    Text('Inicia sesión con tu cuenta', style: TextStyle(
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0
                    )),
                    _emailInput(),
                    _passwordInput(),
                    _buttonLogin(context),
                    Container(
                      margin: EdgeInsets.only(top: 50.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPassword()));
                        },
                        child: Text('¿Olvidaste tu contraseña?', style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0
                        )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("¿No tienes una cuenta?", style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0
                          )),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text('Regístrate', style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0
                              )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ),
            ), 
            )
        ],
      ),
    );
  }
}

Widget _emailInput(){
  return Container(
    margin: EdgeInsets.only(top: 50.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: grisTextfield,
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Correo electrónico',
        border: OutlineInputBorder(
          borderSide: BorderSide.none 
        )
      ),
    ),
  );
}

Widget _passwordInput(){
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: grisTextfield,
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        border: OutlineInputBorder(
          borderSide: BorderSide.none 
        )
      ),
    ),
  );
}

Widget _buttonLogin(BuildContext context){
  return Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 40.0),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TabsPage()));
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
              );
}