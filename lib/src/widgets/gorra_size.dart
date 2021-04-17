import 'package:flutter/material.dart';
import 'package:hatapp/src/models/gorra_model.dart';
import 'package:hatapp/src/pages/gorra_desc_page.dart';
import 'package:provider/provider.dart';

class GorraSizePreview extends StatelessWidget {
  final bool fullScreen;

  const GorraSizePreview({
    this.fullScreen = false,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!this.fullScreen) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => GorraDescPage(),
            ),
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (this.fullScreen) ? 5.0 : 30.0,
          vertical: (this.fullScreen) ? 5 : 0.0,
        ),
        child: Container(
          width: double.infinity,
          height: (this.fullScreen) ? 380 : 430, //TODO: Arreglar tamaño
          decoration: BoxDecoration(
            color: Color(0xffd64541), //0xffF8D468
            borderRadius: (!this.fullScreen)
                ? BorderRadius.circular(50)
                : BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
          ),
          child: Column(
            children: [
              //Gorra con Sombra
              _GorraConSombra(),
              if (!this.fullScreen) _GorraTallas()
            ],
          ),
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
          SizedBox(
            width: 2,
          ),
          _TallaGorraCaja(7),
          _TallaGorraCaja(7.5),
          _TallaGorraCaja(8),
          _TallaGorraCaja(8.5),
          _TallaGorraCaja(9),
          _TallaGorraCaja(9.5),
          SizedBox(
            width: 2,
          ),
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
    final gorraModel = Provider.of<GorraModel>(context);
    return GestureDetector(
      onTap: () {
        final gorraModel = Provider.of<GorraModel>(context, listen: false);
        gorraModel.talla = this.numero;
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          '${this.numero.toString().replaceAll('.0', '')}',
          style: TextStyle(
              color: (this.numero == gorraModel.talla)
                  ? Colors.white
                  : Color(0xffd64541),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: (this.numero == gorraModel.talla)
              ? Color(0xff96281b)
              : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (this.numero == gorraModel.talla)
              BoxShadow(
                color: Color(0xff96281b),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
          ],
        ),
      ),
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
