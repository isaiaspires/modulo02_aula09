import 'dart:ui';

import 'package:flutter/material.dart';

class CatiorosList extends StatelessWidget {
  const CatiorosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nomes = [
      "Dachshund",
      "Golden",
      "Bulldog",
      "Pug",
      "Spaniel",
      "Husky",
      "Border Collie",
      "Beagle",
      "Weimaraner",
      "Dalmata"
    ];

    final tabs = [
      "https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374_960_720.jpg",
      "https://cdn.pixabay.com/photo/2014/03/14/20/07/painting-287403_960_720.jpg",
      "https://cdn.pixabay.com/photo/2020/07/20/06/42/english-bulldog-5422018_960_720.jpg",
      "https://cdn.pixabay.com/photo/2017/07/11/18/12/funny-expression-2494538_960_720.jpg",
      "https://cdn.pixabay.com/photo/2021/01/21/16/16/english-cocker-spaniel-5937751_960_720.jpg",
      "https://cdn.pixabay.com/photo/2016/10/26/14/44/siberian-husky-1771662_960_720.jpg",
      "https://cdn.pixabay.com/photo/2022/01/16/16/46/animal-6942649_960_720.jpg",
      "https://cdn.pixabay.com/photo/2020/06/01/11/19/puppy-5246297_960_720.jpg",
      "https://cdn.pixabay.com/photo/2016/05/09/10/42/weimaraner-1381186_960_720.jpg",
      "https://cdn.pixabay.com/photo/2015/05/13/08/07/dalmatians-765138_960_720.jpg"
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Catioros",
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Catioros",
              style: TextStyle(fontSize: 32),
            ),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
            bottom: TabBar(
              indicatorColor: Colors.yellow,
              isScrollable: true,
              tabs: [
                for (final nome in nomes)
                  Tab(
                    text: nome,
                  ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              for (final tab in tabs)
                Center(
                  child: Image.network(tab),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
