import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int programmerLevel = 0;

  @override
  Widget build(BuildContext context) {
    var text = (programmerLevel < 5)
        ? 'PROGRAMMER LEVEL'
        : (programmerLevel < 10) ? 'Mid Level' : 'Master';

      return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.grey[850],
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "http://192.168.8.101/mucassa/images/laravel-logo.png.jpg"),
                  radius: 40,
                ),
              ),
              Divider(
                height: 90,
                color: Colors.grey[800],
              ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Samuel Bie',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Programmer Level',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '$text',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(Icons.email, color: Colors.grey[400]),
                  SizedBox(width: 5),
                  Text(
                    'samuelbie@mail.com',
                    style: TextStyle(
                      color: Colors.amberAccent[200],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
  }
}
