import 'package:flutter/material.dart';
import 'package:sec_final_final/Enlaces/images.dart';
import 'package:sec_final_final/Inicio de Sesion.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData.dark(),
home: PaginaDeInicio(),
routes: <String, WidgetBuilder>{
  "/INICIODESESION": (BuildContext context) => new LogIn(),
}
));

class PaginaDeInicio extends StatefulWidget {
  @override
  _PaginaDeInicioState createState() => _PaginaDeInicioState();
}

class _PaginaDeInicioState extends State<PaginaDeInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset(seclogo),
                SizedBox(height: 16.0),
                Text('Tu mundo es posible'),
              ],
            ),
            SizedBox(height: 120.0),

            FlatButton(
              textColor: Colors.white,
              color: Colors.teal,
              child: Text('INICIAR'),
              onPressed: () {Navigator.of(context).pushNamed("/INICIODESESION");},
            ),
    ],
    ),
    ),
    );
  }
}