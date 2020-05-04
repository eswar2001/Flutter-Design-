import 'dart:html';

import 'package:flutter/material.dart';

Widget buildCard(String name, Url url, String status) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    elevation: 7.0,
    child: Column(
      children: [
        SizedBox(
          height: 12.0,
        ),
        Stack(
          children: [
            Container(
              height: 50.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.green,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.j'),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              child: Text(
                name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 10.0),
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              status,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey),
            ),
            SizedBox(height: 15.0),
            Expanded(
              child: Container(
                width: 175.0,
                decoration: BoxDecoration(
                  color: !(status == 'Away') ? Colors.grey : Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
