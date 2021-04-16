import 'package:flutter/material.dart';

class BotonNaranja extends StatelessWidget {
  final String texto;

  const BotonNaranja({
    @required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xffd64541),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        '${this.texto}',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
