import 'package:bioskop_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'pages/halamanAwal.dart';
import 'pages/register.dart';
import 'pages/genre.dart';
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
        // Try // running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(
        seconds: 3,
        navigateAfterSeconds: firstPage(),
        title: new Text(
            'Welcome To Bioskop',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white
          ),
        ),
        image: Image.asset('assets/cgv.png'),
        photoSize: 125,
        backgroundColor: Colors.white,
        loaderColor: Colors.lightBlueAccent,
      ),
        routes: {
        '/loginpage': (context) => LoginPage(),
          '/singpage': (context) => SignupPage(),
          '/cinemapage': (context) => GenrePage(),
        }
    );
  }
}


