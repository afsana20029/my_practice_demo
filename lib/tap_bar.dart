import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TapBar extends StatelessWidget {
  const TapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            title: const Text('Currency Converter'),
            foregroundColor: Colors.white,
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            // actions:[ Icon(Icons.access_time_outlined),],
          ),
          body: TabBarView(children: [
            Container(
              color: Colors.blueGrey,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
                color: Colors.pink,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.pink,
                        foregroundColor: Colors.white,
                        minimumSize: Size(double.infinity, 60),
                        shape: (RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)))),
                    child: const Icon(Icons.money))),
          ]),
        ));
  }
}
