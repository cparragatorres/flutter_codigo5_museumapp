
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_museumapp/ui/general/general_widget.dart';

class ItemSlider2Widget extends StatelessWidget {
  const ItemSlider2Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(right: 36.0),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://images.pexels.com/photos/11289040/pexels-photo-11289040.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                bottom: -20,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.all(7.0,),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                    ),
                    child: Icon(
                      Icons.person,
                      color: Color(0xffD6A527),
                      size: 32,
                    ),
                  ),
                ),
              ),
            ],
          ),
          divider30,
          Text(
            "EXPLORAR",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12.0,
            ),
          ),
          divider6,
          Text(
            "Barjeel Art Foundation sdsd sdsd asdasds asdasd ",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
          divider6,
          Text(
            "United Arab Emirates asdasdsad asdsadasd",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
