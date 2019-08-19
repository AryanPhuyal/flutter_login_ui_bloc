import 'package:flutter/material.dart';
import '../bloc/bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          emailField(),
          spaceAround(),
          passwordField(),
          spaceAround(),
          submitButton(),
        ],
      ),
    );
  }

  emailField() => StreamBuilder(
        stream: bloc.email,
        builder: (contex, snapshot) => TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "you@example.com",
            labelText: "EmailAddress",
            errorText: snapshot.error,
          ),
          onChanged: bloc.changeEmail,
        ),
      );
  passwordField() => StreamBuilder(
        stream: bloc.password,
        builder: (content, snapshot) => TextField(
          decoration: InputDecoration(
            labelText: "Passwor",
            hintText: "asas11!@1_",
            errorText: snapshot.error,
          ),
          obscureText: true,
          onChanged: bloc.changePassword,
        ),
      );
  submitButton() => Container(
        width: double.infinity,
        height: 60,
        child: RaisedButton(
          child: Text("login"),
          onPressed: () {},
          color: Colors.blue,
        ),
      );

  spaceAround() => Container(
        margin: EdgeInsets.only(top: 20.0),
      );
}
