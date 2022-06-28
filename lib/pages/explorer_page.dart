import 'package:flutter/material.dart';
import 'package:flutter_codigo5_museumapp/ui/responsive/responsive.dart';

class ExplorerPage extends StatelessWidget {
  const ExplorerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print(ResponsiveUI.of(context).hp(10));

    ResponsiveUI _responsive = ResponsiveUI(context);
    print(_responsive.wp(10));
    print(_responsive.hp(3));

    print(ResponsiveUI.pWidth(context, 0.5));
    print(ResponsiveUI.pHeight(context, 0.3));


    return SingleChildScrollView(
      child: Column(
        children: [

        ],
      ),
    );
  }
}
