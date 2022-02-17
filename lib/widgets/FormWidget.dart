import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';


  submit()
  {
    var isValid=_formKey.currentState!.validate();
    if(isValid)
      {
        _formKey.currentState!.save();
        print(firstName);
        print(lastName);
        print(email);
        print(password);

      }
    else{
      print('Error');

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration:
                      InputDecoration(hintText: 'Enter your first name'),
                  key: ValueKey('First Name'),
                  validator: (value) {
                    if (value.toString().isEmpty)
                      return "First Name should not be empty";
                    else
                      return null;
                  },
                  onSaved: (newValue) {
                    firstName = newValue!.toString();
                  },
                ),
                TextFormField(
                  decoration:
                      InputDecoration(hintText: 'Enter your last name'),
                  key: ValueKey('Last Name'),
                  validator: (value) {
                    if (value.toString().isEmpty)
                      return "last Name should not be empty";
                    else
                      return null;
                  },
                  onSaved: (newValue) {
                    lastName = newValue!.toString();
                  },
                ),
                TextFormField(
                  decoration:
                      InputDecoration(hintText: 'Enter your Email address'),
                  key: ValueKey('Email'),
                  validator: (value) {
                    if (!value.toString().contains('@'))
                      return "Not valid email address";
                    else
                      return null;
                  },
                  onSaved: (newValue) {
                    email = newValue!.toString();
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration:
                      InputDecoration(hintText: 'Enter your password'),
                  key: ValueKey('Password'),
                  validator: (value) {
                    if (value.toString().length<=7)
                      return "password must be 8 character";
                    else
                      return null;
                  },
                  onSaved: (newValue) {
                    password = newValue!.toString();
                  },
                ),
                TextButton(onPressed:() {
                  submit();
                }, child: Text('Submit'))
              ],
            ),
          )),
    );
  }
}
