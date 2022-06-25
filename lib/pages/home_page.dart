import 'package:flutter/material.dart';
import 'package:flutter_codigo5_museumapp/helpers/data/data_dummy.dart';
import 'package:flutter_codigo5_museumapp/ui/general/general_widget.dart';

import '../ui/widgets/item_slider_1_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
          // SingleChildScrollView(
          //   physics: const BouncingScrollPhysics(),
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //       children: imagesDummy
          //           .map((e) => ItemSlider1Widget(image: e))
          //           .toList()),
          // ),
          // divider6,
          SizedBox(
            height: 180,
            child: PageView.builder(
              controller: PageController(
                viewportFraction: 0.47,
                initialPage: 0,
              ),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padEnds: false,
              pageSnapping: false,
              onPageChanged: (int value) {
                print(value);
              },
              itemCount: imagesDummy.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(14.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imagesDummy[index]),
                    ),
                  ),
                );
              },
            ),
          ),
          divider6,
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
            onPressed: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: const Text(
                "Explora +3000 colecciones",
              ),
            ),
          ),
          divider12,
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  "Culture Box",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                divider12,
                Text(
                  "Suscribete para recibir noticias, historias y actualizaciones semanalmente.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
