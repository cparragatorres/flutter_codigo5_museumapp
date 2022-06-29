

import 'package:flutter/material.dart';

class XPage extends StatelessWidget {
  const XPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Builder(builder: (BuildContext context) {
        return NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const SliverAppBar(
                backgroundColor: Colors.amber,
                title: Text('Kindacode.com'),
                expandedHeight: 30,
                collapsedHeight: 150,
              ),
              const SliverAppBar(
                backgroundColor: Colors.green,
                title: Text('Have a nice day'),
                floating: true,
              ),
              SliverAppBar(
                leading: Icon(
                  Icons.list,
                  color: Color(0xFFFBF3F3),
                ),
                actions: [
                  Icon(
                    Icons.more_vert,
                    color: Color(0xFFFBF3F3),
                  )
                ],
                title: Text(
                  'mobo app',
                  style: TextStyle(
                    color: Color(0xFFFBF3F3),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
                pinned: true,
                floating: false,
                expandedHeight: 100.0,
                bottom: TabBar(
                  unselectedLabelColor: Color(0xFFE0A1A1),
                  tabs: <Widget>[
                    Tab(
                      text: 'Home',
                    ),
                    Tab(
                      text: 'Feed',
                    ),
                    Tab(
                      text: 'Profile',
                    ),
                    Tab(
                      text: 'Setting',
                    )
                  ],
                ),
                backgroundColor: Color(0xFFBB1A1A),
              ),
            ];
          },
          body: TabBarView(
            children: [
              // FIRST TabBarView
              CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                width: double.infinity,
                                child: Image.network('https://cdn.britannica.com/24/58624-050-73A7BF0B/valley-Atlas-Mountains-Morocco.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        GridView.count(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          children: List.generate(10, (index) => Container(color: Colors.indigo,)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // SECOND TabBarView
              CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                width: double.infinity,
                                child: Image.network('https://cdn.britannica.com/24/58624-050-73A7BF0B/valley-Atlas-Mountains-Morocco.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                width: double.infinity,
                                child: Text('text'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //THIRD TabBarView
              CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                width: double.infinity,
                                child: Image.network('https://cdn.britannica.com/24/58624-050-73A7BF0B/valley-Atlas-Mountains-Morocco.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                width: double.infinity,
                                child: Text('text'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //FOURTH TabBarView
              CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                width: double.infinity,
                                child: Image.network('https://cdn.britannica.com/24/58624-050-73A7BF0B/valley-Atlas-Mountains-Morocco.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                width: double.infinity,
                                child: Text('text'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
