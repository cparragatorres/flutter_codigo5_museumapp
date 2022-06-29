
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_museumapp/ui/general/colors.dart';
import 'package:flutter_codigo5_museumapp/ui/widgets/my_app_bar_widget.dart';

class ArtistPage extends StatelessWidget {
  const ArtistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 64.0),
        child: MyAppBar()
      ),
    );
  }
}


