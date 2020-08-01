import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Logo(),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                'Ingreso',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Email(),
                  SizedBox(
                    height: 30,
                  ),
                  Password(),
                  SizedBox(
                    height: 30,
                  ),
                  BotonLogin(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BotonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40, right: 40),
      width: double.infinity,
      child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Text(
            'Login',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onPressed: () {}),
    );
  }
}

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40, right: 40),
      child: TextField(
        decoration: InputDecoration(hintText: 'Enter Password'),
      ),
    );
  }
}

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40, right: 40),
      child: TextField(
        decoration: InputDecoration(hintText: 'Enter Email'),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: double.infinity,
      padding: EdgeInsets.only(top: 50),
      child: Image.asset('assets/svgs/logo-gym.png'),
    );
  }
}
