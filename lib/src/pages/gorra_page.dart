import 'package:flutter/material.dart';
import 'package:hatapp/src/widgets/custom_widgets.dart';

class GorraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GorraSizePreview(),
      body: Column(
        children: [
          CustomAppBar(
            text: "For you",
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Hero(
                    tag: "gorra-1",
                    child: GorraSizePreview(),
                  ),
                  GorraDescripcion(
                    titulo: 'Jordan Pro Jumpman',
                    descripcion:
                        "The Jordan Pro Jumpman Classics Cap has a high, structured crown and flat bill, giving you the classic shape. The Jumpman by Nike logo reestablishes the icon, while a snapback closure adjusts to fit.\n \nShown: Black/Gym Red/Black/Gym Red \nStyle: DC3681-010",
                  ),
                ],
              ),
            ),
          ),
          AgregarCarritoBoton(monto: 180.0)
        ],
      ),
    );
  }
}
