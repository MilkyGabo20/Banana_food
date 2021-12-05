import 'package:app_bananafood/src/colors/colors.dart';
import 'package:app_bananafood/src/pages/google_maps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';



class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: CustomScrollView(
       slivers: [
         SliverList(
           delegate: SliverChildListDelegate(
             [
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 16),
                 child: Column(
                   children: [
                     _topBar(context),
               Container(
                 margin: EdgeInsets.symmetric(vertical: 20.0),
                 alignment:  Alignment.centerLeft,
                 child: Text('Encuentra nuevas recetas',
                 style: TextStyle(
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                   fontSize: 30.0
                 ),
                 )
               ),
               _sliderCards(),
               _headers(context, "Popular esta semana...", "Mostrar todo"),
               _populares(context, "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80"),
               _populares(context, "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80"),
               _populares(context, "https://images.unsplash.com/photo-1475090169767-40ed8d18f67d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80"),
               SizedBox(height: 10.0),
               _headers(context, "Colecciones", "Mostrar todas"),
               _sliderCollections()
                   ],
                 ),
               )
             ]
           )
         )
       ],
     ),
   );
  }
}

Widget _topBar(BuildContext context){
  return Row(
    children: [
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'search'),
        child: Container(
          width: 310,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Row(
            children: [
              Icon(Icons.search, size: 20.0, color: gris),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text('Buscar', style: TextStyle(
                  color: gris,
                  fontSize: 17.0
                )),
              )
            ],
          ),
        ),
      ),
      Container(
        width: 45.0,
        height: 45.0,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(209, 209, 214, 1.0),
          borderRadius: BorderRadius.circular(30)
        ),
        child: IconButton(
          icon: Icon(Icons.map_outlined, size: 25, color: Colors.white),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Maps()));
          },
        )
      )
    ],
  );
}

Widget _sliderCards(){
  return Container(
    height: 350.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index){
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index){
            return _tarjeta(context);
          },
        );
      },
    ),
  );
}

Widget _tarjeta(BuildContext context){
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            width: 200.0,
            height: 250.0,
            fit: BoxFit.cover,
            image: NetworkImage('https://images.unsplash.com/photo-1535007813616-79dc02ba4021?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text("Ramen o intento de Ramen",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17.0)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("Ramen casero con precio ahorrativo...",
              style: TextStyle(
                color: gris,
                fontWeight: FontWeight.w600,
                fontSize: 13.0)),
            ),
            Row(
              children: [
                Icon(Icons.star,color: amarillo, size: 16,),
                Text("4.7", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0
                )),
                Text("(15 opiniones)", style: TextStyle(
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 13.0
                )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: 80.0,
                  height: 18.0,
                  child: RaisedButton(
                    elevation: 0.5,
                    shape: StadiumBorder(),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    onPressed: (){},
                    child: Text('Takataka', style: TextStyle(fontSize: 11.0),),
                  ),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String TextAction ){
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child:Text(textHeader,
                 style: TextStyle(
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0
                 ),
                 ),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(TextAction, style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 15.0
            ),
            ),
            Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _populares(BuildContext context, String foto){
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                image: NetworkImage(foto),),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    child: Text('Pay de queso casero',
                     style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize: 17.0
                     ),
                     ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text("Delicioso pay hecho con ingredientes caseros", style: TextStyle(
                      color:gris, fontWeight: FontWeight.w500, fontSize: 13.0
                    ),),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: amarillo, size: 16.0),
                      Text("4.5", 
                      style: TextStyle(
                      color:Colors.black, 
                      fontWeight: 
                      FontWeight.w500, 
                      fontSize: 13.0
                    ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text("23 Comentarios", 
                        style: TextStyle(
                        color:gris, 
                        fontWeight: 
                        FontWeight.w500, 
                        fontSize: 13.0
                    ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 100.0),
                        width: 110.0,
                        height: 18.0,
                        child: RaisedButton(
                          elevation: 0.5,
                          shape: StadiumBorder(),
                          color: Theme.of(context).accentColor,
                          onPressed: (){},
                            child: Text("Ver receta", style: TextStyle(fontSize: 11.0, color: Colors.white)
                            )
                          
                          ),

                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}

Widget _sliderCollections(){
  return Container(
    height: 180.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index){
            return _tarjetaCollection(context);
          },
        );
      },
    ),
  );
}

Widget _tarjetaCollection(BuildContext context){
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://images.unsplash.com/photo-1458642849426-cfb724f15ef7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
              ),
        ),
      ],
    ),
  );
}