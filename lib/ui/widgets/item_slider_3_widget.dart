import 'package:flutter/material.dart';
import 'package:flutter_codigo5_museumapp/ui/general/general_widget.dart';
import 'package:flutter_codigo5_museumapp/ui/responsive/responsive.dart';

class ItemSlider3Widget extends StatelessWidget {
  String title;
  String image;

  ItemSlider3Widget({
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          margin: const EdgeInsets.only(right: 12.0),
          width: ResponsiveUI.of(context).wp(45),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
        ),
        divider6,
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
        divider6,
        Text(
          "12 999 artistas",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
