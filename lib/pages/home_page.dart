import 'package:flutter/material.dart';
import 'package:flutter_codigo5_museumapp/ui/general/general_widget.dart';

import '../ui/widgets/item_slider_1_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          divider20,
          const Text(
            "Explorar Museos",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          divider12,
          const Text(
            "¿Qué quieres visitar hoy?",
            style: TextStyle(color: Colors.white54, fontSize: 14.0),
          ),
          divider12,
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ItemSlider1Widget(
                  image:
                      "https://images.pexels.com/photos/1616403/pexels-photo-1616403.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
                ItemSlider1Widget(
                  image:
                      "https://images.pexels.com/photos/102127/pexels-photo-102127.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
                ItemSlider1Widget(
                  image:
                      "https://images.pexels.com/photos/1145720/pexels-photo-1145720.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
                ItemSlider1Widget(
                  image:
                      "https://images.pexels.com/photos/354939/pexels-photo-354939.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

