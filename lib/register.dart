import 'package:flutter/material.dart';
import 'profile.dart';

 

class RegisterPage extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Register'),

      ),

      body: RegisterForm(),

    );

  }

}

 

class RegisterForm extends StatefulWidget {

  @override

  _RegisterFormState createState() => _RegisterFormState();

}

 

class _RegisterFormState extends State<RegisterForm> {

  final _formKey = GlobalKey<FormState>();

 

  TextEditingController _usernameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _firstNameController = TextEditingController();

  TextEditingController _lastNameController = TextEditingController();

 

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

            TextFormField(

              controller: _emailController,

              decoration: InputDecoration(labelText: 'Email'),

             

            ),

            TextFormField(

              controller: _firstNameController,

              decoration: InputDecoration(labelText: 'First Name'),

          

            ),

            TextFormField(

              controller: _lastNameController,

              decoration: InputDecoration(labelText: 'Last Name'),

            
            ),

            ElevatedButton(

              onPressed: () {

                {

                  // Perform registration logic here

                  String username = _usernameController.text;

                  String password = _passwordController.text;

                  String email = _emailController.text;

                  String firstName = _firstNameController.text;

                  String lastName = _lastNameController.text;

                  // Add your registration code here

                }

              },

              child: Text('Register'),
            ),
              ElevatedButton(
                onPressed: () {
                  // Add functionality to upload profile picture
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageUploadPage(),
                    ),
                  );
                },
                child: Text('Upload Profile Picture'),
              ),


          ],

        ),

      ),

    );

  }

}