import 'package:flutter/material.dart';

 

class LoginPage extends StatefulWidget {

  @override

  _LoginPageState createState() => _LoginPageState();

}

 

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  String username = '';
  String password = '';

 

  void _login() async {

    if (_formKey.currentState!.validate()) {

      // TODO: Implement login logic here

      // For example, you could make a network request to authenticate the user

      // and then navigate to the home page if the login is successful.

    }

  }

 

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Login'),

      ),

      body: Form(

        key: _formKey,

        child: Column(

mainAxisAlignment: MainAxisAlignment.center,

          children: [

            TextFormField(

              decoration: InputDecoration(

                labelText: 'Username',

              ),

              validator: (value) {

                if (value == null || value.isEmpty) {

                  return 'Please enter a username.';

                }

                return null;

              },

              onChanged: (value) {

                setState(() {

                  username = value;

                });

              },

            ),

            TextFormField(

              decoration: InputDecoration(

                labelText: 'Password',

              ),

              obscureText: true,

              validator: (value) {

                if (value == null || value.isEmpty) {

                  return 'Please enter a password.';

                }

                return null;

              },

              onChanged: (value) {

                setState(() {

                  password = value;

                });

              },

            ),

            ElevatedButton(

              onPressed: _login,

              child: Text('Login'),

            ),

          ],

        ),

      ),

    );

  }

}