import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottonNavigationBar(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'ChatPage');
        },
        backgroundColor: Colors.red[300],
        child: Icon(Icons.message),
      ),
    );
  }
}

Widget _fondoApp() {
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

Widget _titulos() {
  return SafeArea(
    child: Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(
            'Bienvenidos al Gimnasio',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            'Te presentamos todas las funcionalidas de nuestra App:',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

Widget _botonesRedondeados() {
  return Table(children: [
    TableRow(children: [
      _crearBotonRedondeado(Colors.blue, Icons.directions_run, 'Rutinas'),
      _crearBotonRedondeado(
          Colors.purpleAccent, Icons.assistant_photo, 'Metas'),
    ]),
    TableRow(children: [
      _crearBotonRedondeado(Colors.amberAccent, Icons.filter_7, 'Mi Peso'),
      _crearBotonRedondeado(
          Colors.cyan, Icons.format_color_text, 'Alimentación'),
    ]),
    TableRow(children: [
      _crearBotonRedondeado(Colors.green, Icons.bookmark, 'Actividad5'),
      _crearBotonRedondeado(Colors.orange, Icons.event_seat, 'Actividad6'),
    ]),
  ]);
}

Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
  return Container(
    height: 180,
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Color.fromRGBO(62, 66, 107, 0.7),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(
          height: 5.0,
        ),
        CircleAvatar(
          radius: 35.0,
          child: Icon(icono),
          backgroundColor: color,
        ),
        Text(texto),
        SizedBox(
          height: 5.0,
        )
      ],
    ),
  );
}

Widget _bottonNavigationBar(BuildContext context) {
  return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 107, 0.7),
        //primaryColor: Colors.red
      ),
      child: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.apps), title: Text('Principal')),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), title: Text('Hoy')),
        BottomNavigationBarItem(
            icon: Icon(Icons.alarm), title: Text('Recordatorio')),
      ]));
}
