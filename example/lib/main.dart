import 'package:flutter/material.dart';
import 'package:shaped_buttons/shaped_buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shaped Button usage demo'),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ParallalogramButton(
                buttonColor: Colors.yellow[700],
                child: Text(
                  "Regular Button",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  print('Button Pressed');
                },
              ),
              ParallalogramButton(
                width: 200,
                borderColor: Colors.black,
                buttonColor: Colors.yellow[700],
                borderWdth: 5,
                child: Text(
                  "Button with border",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  print('Button Pressed');
                },
              ),
              ParallalogramButton(
                width: 220,
                borderColor: Colors.black,
                buttonColor: Colors.yellow[700],
                boxShadow: [
                  new BoxShadow(
                    blurRadius: 34.0,
                    color: Color.fromRGBO(0, 0, 0, 0.30),
                    offset: new Offset(0.0, 12.0),
                  ),
                ],
                borderWdth: 2,
                child: Text(
                  "Button with shadow",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  print('Button Pressed');
                },
              ),
              ParallalogramButton(
                width: 250,
                borderColor: Colors.black,
                buttonColor: Colors.transparent,
                borderWdth: 1,
                child: Text(
                  "Transparent button with border",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  print('Button Pressed');
                },
              ),
            ],
          )),
    );
  }
}
