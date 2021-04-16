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
          GorraSizePreview(),
        ],
      ),
    );
  }
}
