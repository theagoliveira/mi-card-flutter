import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color bg = Colors.indigo;
  Color bg100 = Colors.indigo[100];
  Color bg900 = Colors.indigo[900];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bg,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profile_picture.png'),
              ),
              Text(
                'Thiago Cavalcante',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'PROFESSOR DE PROGRAMAÇÃO',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: bg100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: bg100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: bg,
                  ),
                  title: Text(
                    '+55 (82) 98765-4321',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                      color: bg900,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: bg,
                  ),
                  title: Text(
                    'thiago.kun@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                      color: bg900,
                    ),
                  ),
                ),
              ),
              TextButton(
                child: Text(
                  "Clique Aqui!",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if (bg == Colors.indigo) {
                      bg = Colors.red;
                      bg100 = Colors.red[100];
                      bg900 = Colors.red[900];
                    } else {
                      bg = Colors.indigo;
                      bg100 = Colors.indigo[100];
                      bg900 = Colors.indigo[900];
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
