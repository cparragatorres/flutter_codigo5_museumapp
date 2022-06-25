import 'package:flutter/material.dart';
import 'package:flutter_codigo5_museumapp/helpers/data/data_dummy.dart';
import 'package:flutter_codigo5_museumapp/ui/general/colors.dart';
import 'package:flutter_codigo5_museumapp/ui/general/general_widget.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import '../ui/widgets/item_slider_1_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
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
                divider30,
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 22.0, horizontal: 14.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white.withOpacity(0.06),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/image1.png',
                        height: 170.0,
                      ),
                      divider12,
                      const Text(
                        "Culture Box",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      divider12,
                      const Text(
                        "Suscribete para recibir noticias, historias y actualizaciones semanalmente.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      divider12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                side: const BorderSide(
                                  width: 1.2,
                                  color: Colors.white10,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text("No, Gracias"),
                          ),
                          dividerWidth12,
                          TextButton(
                            style: TextButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                side: const BorderSide(
                                  width: 1.2,
                                  color: Colors.white10,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text("Suscribirme"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                divider30,
                const Text(
                  "Las mejores selecciones de hoy",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                divider30,
                SizedBox(
                  height: 400,
                  child: Swiper(
                    // viewportFraction: 0.9,
                    // scale: 0.6,
                    itemCount: imagesDummy.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              imagesDummy[index],
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.center,
                                    colors: [
                                      kBrandPrimaryColor.withOpacity(0.9),
                                      kBrandPrimaryColor.withOpacity(0.1),
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Lorem ipsum dolor sit amet",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  divider6,
                                  Text(
                                    "Lorem ipsum dolor sit amet Lorem  ipsum dolor sit amet",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemWidth: width * 0.7,
                    layout: SwiperLayout.STACK,
                    autoplay: false,
                    controller: SwiperController(),
                  ),
                ),
                divider30,
              ],
            ),
          ),
          Container(
            height: 380,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.pexels.com/photos/1509534/pexels-photo-1509534.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
              ),
            ),
            child: Column(
              children: [
                Text(
                  "El festival cultural",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Encabezando hoy...",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(

                ),
              ],
            ),
          ),
          divider40,
          divider40,
        ],
      ),
    );
  }
}
