import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hatapp/src/helpers/helpers.dart';
import 'package:hatapp/src/models/gorra_model.dart';
import 'package:hatapp/src/widgets/custom_widgets.dart';
import 'package:provider/provider.dart';

class GorraDescPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    cambiarStatusLight();
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: "gorra-1",
                child: GorraSizePreview(fullScreen: true),
              ),
              Positioned(
                top: 80,
                child: FloatingActionButton(
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 60,
                  ),
                  onPressed: () {
                    cambiarStatusDark();
                    Navigator.pop(context);
                  },
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  highlightElevation: 0,
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GorraDescripcion(
                    titulo: 'Jordan Pro Jumpman',
                    descripcion:
                        "The Jordan Pro Jumpman Classics Cap has a high, structured crown and flat bill, giving you the classic shape. The Jumpman by Nike logo reestablishes the icon, while a snapback closure adjusts to fit.\n \nShown: Black/Gym Red/Black/Gym Red \nStyle: DC3681-010",
                  ),
                  _MontoBuyNow(),
                  _ColoresYmas(),
                  _BotonesLikeCartSettings()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _BotonesLikeCartSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _BotonSombreado(
            Icon(
              Icons.star,
              color: Colors.red,
              size: 25,
            ),
          ),
          _BotonSombreado(
            Icon(
              Icons.shopping_cart,
              color: Colors.grey.withOpacity(0.4),
              size: 25,
            ),
          ),
          _BotonSombreado(
            Icon(
              Icons.settings,
              color: Colors.grey.withOpacity(0.4),
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class _BotonSombreado extends StatelessWidget {
  final Icon icon;
  const _BotonSombreado(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.icon,
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: -5,
              blurRadius: 20,
              offset: Offset(0, 10),
            )
          ]),
    );
  }
}

class _ColoresYmas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                    left: 90,
                    child: _BotonColor(Color(0xffC6D642), 4,
                        'assets/img/pixlr-bg-result (1).png')),
                Positioned(
                    left: 60,
                    child: _BotonColor(Color(0xffFFAD29), 3,
                        'assets/img/pixlr-bg-result (1).png')),
                Positioned(
                    left: 30,
                    child: _BotonColor(Color(0xffd64541), 2,
                        'assets/img/pixlr-bg-result.png')),
                _BotonColor(
                    Color(0xff364d56), 1, 'assets/img/pixlr-bg-result (1).png'),
              ],
            ),
          ),
          // Spacer(),
          BotonNaranja(
            texto: 'More related items',
            alto: 30,
            ancho: 170,
            color: Color(0xffD57875),
          )
        ],
      ),
    );
  }
}

class _BotonColor extends StatelessWidget {
  final Color color;
  final int index;
  final String urlImagen;
  const _BotonColor(this.color, this.index, this.urlImagen);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: this.index * 100),
      duration: Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          final gorraModel = Provider.of<GorraModel>(context, listen: false);
          gorraModel.assetImage = this.urlImagen;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: this.color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: [
            Text(
              '\$180.0',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Bounce(
              delay: Duration(seconds: 1),
              from: 8,
              child: BotonNaranja(
                texto: 'Buy now',
                ancho: 120,
                alto: 40,
                color: Color(0xffd64541),
              ),
            )
          ],
        ),
      ),
    );
  }
}
