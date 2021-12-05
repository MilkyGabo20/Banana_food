import 'package:app_bananafood/src/colors/colors.dart';
import 'package:app_bananafood/src/pages/login_page.dart';
import 'package:app_bananafood/src/widgets/back_button.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context){
            return backButton(context, Colors.black);
          }
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text('Olvidó su contraseña', style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0)),
              Container(
                padding: EdgeInsets.all( 10.0),
                child: Text('Por favor ingrese su correo electrónico. Recibirá un link vía correo electronico para crear una nueva contraseña', 
                textAlign: TextAlign.center, 
                style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0)),
              ),
               _emailInput(),
               _sendButton(context)   
            ],
          ),
        ),
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
        hintText: 'Ingresa tu correo',
        border: OutlineInputBorder(
          borderSide: BorderSide.none 
        )
      ),
    ),
  );
}

Widget _sendButton(BuildContext context){
  return Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 40.0),
                child: RaisedButton(
                  onPressed: (){
                    _showAlerta(context);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color:Theme.of(context).accentColor,
                  child: Text('Enviar', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0
                  ))
                ),
              );
}

void _showAlerta(BuildContext context){
  showDialog(
    context: context,
    builder: (BuildContext context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        content: Container(
          height: 350,
          child: Column(
            children: [
              Image.asset('images/contraseñares.png', width: 140),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text('Contraseña restablecida con éxito', style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0)),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text('En breve recibirá un correo electrónico para crear una nueva contraseña', style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0)),
              ),
              _doneButton(context)
            ],
          ),
        ),
      );
    }
  );
}

Widget _doneButton(BuildContext context){
  return Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 40.0),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color:Theme.of(context).accentColor,
                  child: Text('Hecho', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0
                  ))
                ),
              );
}