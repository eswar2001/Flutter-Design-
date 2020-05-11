import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 3.0, left: 3.0),
                  child: FlutterLogo(
                    colors: Colors.indigo,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0, right: 3.0),
                  child: Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.purple[900]),
                  ),
                )
              ],
            ),
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                child: Text(
                  'Stayhome illustrations',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 12.0),
                child: Text(
                  'STAY COOL',
                  style: TextStyle(
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.w500,
                      fontSize: 55.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  'Use these illustrations to tell everyone about\nthings that really matter now',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.indigo[900], fontSize: 25.0),
                ),
              ),
              RaisedButton(
                color: Colors.purple[800],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                child: Text(
                  'Get started',
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: 70.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 12.0, right: 50.0, left: 50.0, bottom: 100.0),
                child: Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Image.network(
                      'https://842930.smushcdn.com/1760858/wp-content/uploads/2020/05/stayhome-02-relax.png?lossy=1&strip=1&webp=1'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
