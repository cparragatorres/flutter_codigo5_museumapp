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
          preferredSize: const Size(double.infinity, 64.0), child: MyAppBar()),
      body: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 200,
                collapsedHeight: 150,
                title: Text("AppBar 1"),
                centerTitle: true,
              ),
              SliverAppBar(
                backgroundColor: Colors.green,
                leading: SizedBox(),
                expandedHeight: 300,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Container(
                    height: 150,
                    alignment: Alignment.center,
                    color: Colors.black,
                    child: Text(
                      "Hola",
                    ),
                  ),
                  centerTitle: true,
                ),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: "Home",
                    ),
                    Tab(
                      text: "Home",
                    ),
                    Tab(
                      text: "Home",
                    ),
                  ],
                ),
              )
            ];
          },
          body: Column(
            children: [
              Container(
                color: Colors.red,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
