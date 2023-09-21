import 'package:flutter/material.dart';

 

class LoginRegisterPage extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Login'),

      ),

      body: LoginForm(),

    );

  }

}

 

class LoginForm extends StatefulWidget {

  @override

  _LoginFormState createState() => _LoginFormState();

}

 

class _LoginFormState extends State<LoginForm> {

  final _formKey = GlobalKey<FormState>();

 

  TextEditingController _usernameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

 

  @override

  Widget build(BuildContext context) {

    return Padding(

      padding: EdgeInsets.all(16.0),

      child: Form(

        key: _formKey,

        child: Column(

          children: <Widget>[

            TextFormField(

              controller: _usernameController,

              decoration: InputDecoration(labelText: 'Username'),

            ),

            TextFormField(

              controller: _passwordController,

              obscureText: true,

              decoration: InputDecoration(labelText: 'Password'),


            ),

            ElevatedButton(

              onPressed: () {

              {

                  // Perform login logic here

                  String username = _usernameController.text;

                  String password = _passwordController.text;

                  // Add your authentication code here

                }

              },

              child: Text('Login'),

            ),

            TextButton(

              onPressed: () {

                Navigator.pushNamed(context, '/register');

              },

              child: Text('Register'),

            ),

          ],

        ),

      ),

    );

  }

}