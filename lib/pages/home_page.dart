import 'package:flutter/material.dart';
import 'package:flutter_codigo5_museumapp/ui/general/general_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        divider20,
        Text(
          "Explorar Museos",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        divider12,
        Text(
          "¿Qué quieres visitar hoy?",
          style: TextStyle(
              color: Colors.white54,
              fontSize: 14.0
          ),
        ),
        Row(
          children: [],
        ),
      ],
    );
  }
}
