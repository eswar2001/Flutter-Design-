import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'Widgets/inkwellbutton.dart';

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
      title: 'DemoApp',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              inkwellButton('1', Colors.white70, Colors.blueAccent[100]),
              inkwellButton('2', Colors.blueAccent[100], Colors.white70),
              inkwellButton('3', Colors.blueAccent[100], Colors.white70),
              inkwellButton('4', Colors.blueAccent[100], Colors.white70)
            ],
          ),
        ),
        SizedBox(height: 30.0),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'SELECT INSURANCE TYPE',
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 100.0),
        Center(
            child: SizedBox(
          height: 400.0,
          child: PageView.builder(
            itemCount: 4,
            controller: PageController(viewportFraction: 0.7),
            onPageChanged: (int index) => setState(() => _index = index),
            itemBuilder: (_, i) {
              return Transform.scale(
                scale: i == _index ? 1 : 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  height: 700.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50.0,
                      ),
                      Text(
                        'MotorCycle',
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Image.network(
                        'https://pngimage.net/wp-content/uploads/2018/06/scooter-vector-png-8.png',
                        height: 100.0,
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Material(
                        color: Colors.white,
                        child: Ink(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.blue[200], width: 4.0),
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(1000.0),
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 30.0,
                                color: Colors.blue[200],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ))
      ]),
    );
  }
}
