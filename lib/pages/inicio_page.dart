import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    final double ancho = MediaQuery.of(context).size.width;
    final double alto = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: Colors.amberAccent,
      body: Stack(children: <Widget>[
        _fondoLogin(),
        SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: <Widget>[
              Logo(alto: alto, ancho: ancho),
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
                    SizedBox(height: 20.0),
                    Password(),
                    SizedBox(
                      height: 20.0,
                    ),
                    BotonLogin(ancho: ancho),
                  ],
                ),
              ),
            ],
          )),
        ),
      ]),
    );
  }
}

Widget _fondoLogin() {
  final gradiente = Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [Colors.red, Colors.blue]),
    ),
  );
  return Stack(
    children: <Widget>[
      gradiente,
    ],
  );
}

class Logo extends StatelessWidget {
  const Logo({
    Key key,
    @required this.alto,
    @required this.ancho,
  }) : super(key: key);

  final double alto;
  final double ancho;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        //color: Colors.blue,
        height: alto * 0.3,
        width: ancho,
        //decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
        child: Image.asset('assets/svgs/logo-gym.png'),
      ),
    );
  }
}

class BotonLogin extends StatelessWidget {
  const BotonLogin({
    Key key,
    @required this.ancho,
  }) : super(key: key);

  final double ancho;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ancho,
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Text(
            'Login',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'PrincipalPage');
          }),
    );
  }
}

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Enter Mail',
              icon: Icon(Icons.mail),
            ),
          ),
        ),
      ),
    );
  }
}

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'Enter Password', icon: Icon(Icons.vpn_key)),
          ),
        ),
      ),
    );
  }
}
