// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Slivers Test'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 73, 73, 73),
        ),
        body: RefreshIndicator(
          onRefresh: () async {},
          child: Container(
            color: Colors.black,
            child: CustomScrollView(
              slivers: [
                // SliverAppBar(
                //   title: Text('Slivers Test'),
                //   centerTitle: true,
                //   backgroundColor: Color.fromARGB(255, 73, 73, 73),
                // ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Theme(
                      data: Theme.of(context).copyWith(
                        textTheme: TextTheme(
                          bodyText1: TextStyle(
                            color: Colors.white,
                          ),
                          bodyText2: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Jogo muito bom',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Text(
                            'Jogo muito bom',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Jogo muito bom',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Jogo muito bom',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Jogo muito bom',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Jogo muito bom',
                            style: TextStyle(color: Colors.white),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('COMPRAR'),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      color: Colors.red,
                      child: Image.network(
                        'https://image.api.playstation.com/cdn/UP0002/CUSA00243_00/KxUlIjbtqJ7GPwCzjtKnS4GTDP6JSgib.png',
                      ),
                    )
                  ]),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 150,
                    (context, index) {
                      print('renderizou item $index');
                      return Card(
                        color: Colors.blueAccent,
                        child: Text('item $index',
                            style: TextStyle(color: Colors.white)),
                      );
                    },
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      margin: EdgeInsets.only(bottom: 50, top: 50),
                      color: Colors.red,
                      child: Image.network(
                        'https://i.ytimg.com/vi/Q17FDfU7-ds/maxresdefault.jpg',
                      ),
                    )
                  ]),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 20,
                    (context, index) {
                      print('renderizou botão $index');
                      return Container(
                        color: Colors.red.withOpacity(0.1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Pressione ao lado ->',
                              style: TextStyle(color: Colors.white),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber,
                              ),
                              child: Text(index.toString()),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
