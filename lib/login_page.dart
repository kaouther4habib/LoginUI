import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage ({Key? key}) : super(key: key);
  static String tag = 'login_page';
  @override
  _LoginPageState createState() =>_LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final logo=Hero(tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image.asset('assets/lotus.png'),
        ),);

    final email=TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'aaa@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      ),
    );


    final password=TextFormField(
      obscureText: true,
      autofocus: false,
      initialValue: 'password',
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0)
          )
      ),
    );

    final loginButton=Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
    child: Material(
      borderRadius: BorderRadius.circular(30.0),
      shadowColor: Colors.pinkAccent.shade100,
      elevation: 5.0,
      child: MaterialButton(
        minWidth: 200.0,
        height: 42.0,
        onPressed: (){},
        color: Color(0xffffaaad),
        child: Text('Log In',style: TextStyle(color: Colors.white)),
      ),
    ),
    );

    final forgetLabel=TextButton(onPressed: (){},
        child: Text('Forgot Password?',style: TextStyle(color:Color(0xffffaaad)),),);

    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0,right:24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0,),
            loginButton,
            forgetLabel,

          ],
        ),
      )
    );
  }
}
