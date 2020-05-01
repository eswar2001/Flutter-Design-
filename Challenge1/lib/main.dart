import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Design1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[50],
      body: PageView(
        allowImplicitScrolling: true,
        children: [
          page(
              'Get early access before the official launch',
              "https://i.dlpng.com/static/png/1647142-profilepng-512512-profile-png-512_512_preview.png",
              '01',
              Colors.amber),
          page(
              'Simple desing,   prototyping and collaboration',
              'https://i.ya-webdesign.com/images/circle-avatar-png-7.png',
              '02',
              Colors.blueAccent),
          page(
              'Make more time for the work matters most',
              'https://i.ya-webdesign.com/images/avatar-png-1.png',
              '03',
              Colors.greenAccent),
        ],
      ),
    );
  }

  Widget page(String text, String url, String no, Color color) {
    return ListView(
      children: [
        SizedBox(height: 20.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          textDirection: TextDirection.ltr,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 50.0, right: 50.0, bottom: 5.0),
              child: Text(
                no,
                style: TextStyle(
                  color: Colors.grey[350],
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 45.0),
              ),
            )
          ],
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 450.0,
              width: 460.0,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: Center(
                child: Image.network(
                  url,
                  height: 300.0,
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Card(
                margin: EdgeInsets.only(top: 35.0),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                semanticContainer: true,
                borderOnForeground: true,
                elevation: 10.0,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100.0),
                  ),
                ),
                color: Colors.white,
                child: Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    autofocus: true,
                    canRequestFocus: true,
                    hoverColor: color,
                    focusColor: color,
                    splashColor: color,
                    radius: 100.0,
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      splashColor: color,
                      tooltip: 'Please Swipe L2R',
                      hoverColor: color,
                      visualDensity: VisualDensity(),
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
