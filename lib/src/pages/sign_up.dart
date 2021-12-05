import 'package:app_bananafood/src/colors/colors.dart';
import 'package:app_bananafood/src/pages/login_page.dart';
import 'package:app_bananafood/src/widgets/back_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading:  Builder(builder: (BuildContext context){
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text('Crear una cuenta', style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0)),
              _userName(context),
              _emailInput(context),
              _phoneInput(context),
              _passwordInput(context),
              _confirmPasswordInput(context),
              _SignUpButton(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                child: Text(
                  'Al hacer clic en Confirmar registro acepta los siguientes términos y condiciones',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                  ),
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _userName(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 80.0),
    padding: EdgeInsets.only(left: 15.0),
    decoration: BoxDecoration(
      color: grisTextfield,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Nombre de usuario',
        border: OutlineInputBorder(
          borderSide: BorderSide.none 
        )
      ),
    )
  );
}

Widget _emailInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 15.0),
    decoration: BoxDecoration(
      color: grisTextfield,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Correo electrónico',
        border: OutlineInputBorder(
          borderSide: BorderSide.none 
        )
      ),
    )
  );
}

Widget _phoneInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 15.0),
    decoration: BoxDecoration(
      color: grisTextfield,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: 'Número telefónico',
        border: OutlineInputBorder(
          borderSide: BorderSide.none 
        )
      ),
    )
  );
}

Widget _passwordInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 15.0),
    decoration: BoxDecoration(
      color: grisTextfield,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        border: OutlineInputBorder(
          borderSide: BorderSide.none 
        )
      ),
    )
  );
}

Widget _confirmPasswordInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 15.0),
    decoration: BoxDecoration(
      color: grisTextfield,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Confirmar contraseña',
        border: OutlineInputBorder(
          borderSide: BorderSide.none 
        )
      ),
    )
  );
}

Widget _SignUpButton(BuildContext context){
  return  Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 50.0),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color: Colors.greenAccent,
                  child: Text('Confirmar registro', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0
                  ))
                ),
              );
}