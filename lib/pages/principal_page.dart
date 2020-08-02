import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.blueAccent,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Center(
                  child: Text(
                    'Bienvenidos al Gimnasio',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              PrimerRow(),
              SegundoRow(),
              TercerRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class PrimerRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset('assets/buttons/button-1.png'),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset('assets/buttons/button-2.png'),
            ),
          ),
        ),
      ],
    );
  }
}

class SegundoRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset('assets/buttons/button-3.png'),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset('assets/buttons/button-4.png'),
            ),
          ),
        ),
      ],
    );
  }
}

class TercerRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset('assets/buttons/button-5.png'),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset('assets/buttons/button-6.png'),
            ),
          ),
        ),
      ],
    );
  }
}
