import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proyectosoftware/widgets/slideshow.dart';

class SlideShowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(71, 175, 143, 0.8),
      body: Column(
        children: <Widget>[
          Expanded(child: MiSlideShow()),
          Row(
            children: <Widget>[
              Expanded(child: Registro()),
              Expanded(child: IniciarSesion())
            ],
          ),
        ],
      ),
    );
  }
}

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20),
        height: 60,
        child: Container(
          alignment: Alignment.centerLeft,
          child: RaisedButton(
            onPressed: () {},
            child: Text('Registro'),
          ),
        ));
  }
}

class IniciarSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 20),
        height: 60,
        child: Container(
          alignment: Alignment.centerRight,
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'InicioPage');
            },
            child: Text('Iniciar Sesión'),
          ),
        ));
  }
}

class MiSlideShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideShow(
      slides: <Widget>[
        SvgPicture.asset('assets/svgs/slide-1.svg'),
        SvgPicture.asset('assets/svgs/slide-2.svg'),
        SvgPicture.asset('assets/svgs/slide-3.svg'),
        SvgPicture.asset('assets/svgs/slide-4.svg'),
        SvgPicture.asset('assets/svgs/slide-5.svg'),
      ],
    );
  }
}
