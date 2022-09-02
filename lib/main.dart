import 'dart:io';

import 'package:flutter/material.dart';
import 'package:udemy_responsive/mobile.dart';

import 'desktop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth.toInt() <= 607) {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(

                  textScaleFactor: .8,
                ),
                child: MobileScreen());
          }
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.1,
              ),
              child: DesktopScreen());
        },
      ),
    );
  }
}
