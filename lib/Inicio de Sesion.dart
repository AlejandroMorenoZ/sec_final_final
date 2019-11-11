import 'package:flutter/material.dart';
import 'package:sec_final_final/Enlaces/images.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
            SizedBox(height: 80.0),
              //color
              TextField(
                cursorColor: Colors.teal,
                cursorRadius: Radius.circular(14.0),
                cursorWidth: 16.0,
                decoration: InputDecoration(
                    labelText: '# de Empleado',
                    border: OutlineInputBorder()
                ),
              ),
            SizedBox(height: 28.0),
            TextField(
              cursorColor: Colors.teal,
              cursorRadius: Radius.circular(14.0),
              cursorWidth: 16.0,
              decoration: InputDecoration(
                  labelText: '# de SS',
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20.0),
            FlatButton(
              textColor: Colors.white,
              color: Colors.teal,
              child: Text('LOG IN'),
              onPressed: () {Navigator.of(context).pushNamed("/INICIODESESION");},
            ),
          ],
        ),
      ),
    );
  }
}