import 'package:flutter/material.dart';

import 'LoginPage.dart';

import 'register.dart';

 

void main() => runApp(MyApp());

 

class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      initialRoute: '/',

      routes: {

        '/': (context) => LoginRegisterPage(),

        '/register': (context) => RegisterPage(),

      },

    );

  }

}