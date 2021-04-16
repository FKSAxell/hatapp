import 'package:flutter/material.dart';

class GorraSizePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430, //TODO: Arreglar tamaño
        decoration: BoxDecoration(
          color: Color(0xffd64541), //0xffF8D468
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            //Gorra con Sombra
            _GorraConSombra(),

            _GorraTallas()
          ],
        ),
      ),
    );
  }
}

class _GorraTallas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TallaGorraCaja(7),
          _TallaGorraCaja(7.5),
          _TallaGorraCaja(8),
          _TallaGorraCaja(8.5),
          _TallaGorraCaja(9),
          _TallaGorraCaja(9.5),
        ],
      ),
    );
  }
}

class _TallaGorraCaja extends StatelessWidget {
  final double numero;

  const _TallaGorraCaja(this.numero);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '${this.numero.toString().replaceAll('.0', '')}',
        style: TextStyle(
            color: Color(0xffd64541),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            // BoxShadow(
            // TODO: Pendiente
            // )
          ]),
    );
  }
}

class _GorraConSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Stack(
        children: [
          Positioned(
            bottom: 50,
            right: 0,
            child: _GorraSombra(),
          ),
          Image(
            width: 350,
            height: 350,
            image: AssetImage('assets/img/pixlr-bg-result.png'),
          )
        ],
      ),
    );
  }
}

class _GorraSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 100,
      decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Color(0xff96281b),
              blurRadius: 40,
            ),
          ]),
    );
  }
}
