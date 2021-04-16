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
                  GorraSizePreview(),
                  GorraDescripcion(
                    titulo: 'Nike Air Max 720',
                    descripcion:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
