import 'dart:async';

import 'package:flutter/material.dart';

class IntroSliderPage extends StatefulWidget {
  const IntroSliderPage({Key? key}) : super(key: key);

  @override
  State<IntroSliderPage> createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {

  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _pageController.addListener(() {
    //   print(_pageController.page);
    // });

    Timer.periodic(
      Duration(seconds: 5),
      (timer) {
        _currentPage++;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(
            milliseconds: 400,
          ),
          curve: Curves.easeIn,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              onPageChanged: (int value) {
                print(value);
              },
              children: [
                Center(
                  child: Text("1"),
                ),
                Center(
                  child: Text("2"),
                ),
                Center(
                  child: Text("3"),
                ),
                Center(
                  child: Text("4"),
                ),
                Center(
                  child: Text("5"),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {

            },
            child: Text("Iniciar ahora"),
          ),
        ],
      ),
    );
  }
}
