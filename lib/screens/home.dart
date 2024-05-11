import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:rentatur/screens/profil.dart';
import 'package:rentatur/screens/turDetay.dart';
import 'package:rentatur/screens/turlar.dart';

import 'kesfet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController = TextEditingController();
  int selected = 0;
  PageController controller = PageController();
  List<TabItem> items = [
    TabItem(
      icon: Icons.tour,
      title: 'Turlar',
    ),
    TabItem(
      icon: Icons.map,
      title: 'Keşfet',
    ),
    TabItem(
      icon: Icons.account_box,
      title: 'Profilim',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.3,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.3,
            alignment: Alignment.topLeft,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 58.0, horizontal: 20),
                child: InkWell(onTap: () {}, child: Text("Çıkış Yap")),
              )
            ]),
          )),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: tabName(selected),
        actions: [
          AnimSearchBar(
            helpText: "Tur Ara...",
            onSubmitted: (p0) {},
            width: 400,
            textController: searchController,
            onSuffixTap: () {
              setState(() {
                searchController.clear();
              });
            },
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: PageView(
            physics: BouncingScrollPhysics(),
            controller: controller,
            onPageChanged: (visit) {
              setState(() {
                visit = visit;
              });
            },
            children: [
              GestureDetector(
                  onTap: () {
                    showCupertinoModalBottomSheet(
                      context: context,
                      builder: (context) => SingleChildScrollView(
                        controller: ModalScrollController.of(context),
                        child: turDetayVeSecim(),
                      ),
                    );
                  },
                  child: turlar()),
              GestureDetector(onTap: () {}, child: kesfet()),
              GestureDetector(onTap: () {}, child: profil()),
            ]),
      ),
      bottomNavigationBar: BottomBarInspiredFancy(
        animated: true,
        iconSize: 25,
        curve: ElasticInCurve(55),
        blur: 5,
        backgroundColor: Colors.white,
        items: items,
        color: Colors.grey,
        colorSelected: Colors.redAccent,
        indexSelected: selected,
        onTap: (int index) => setState(() {
          selected = index;
          controller.jumpToPage(index);
        }),
      ),
    );
  }
}

tabName(int index) {
  switch (index) {
    case 0:
      // do something
      return Text(
        "Gezi Turları",
        style: TextStyle(
          color: Colors.redAccent,
        ),
      );

    case 1:
      // do something else
      return Text(
        "Keşfedilecek Yerler",
        style: TextStyle(
          color: Colors.redAccent,
        ),
      );

    case 2:
      return Text(
        "Profilim",
        style: TextStyle(
          color: Colors.redAccent,
        ),
      );
    // do something else
  }
}
