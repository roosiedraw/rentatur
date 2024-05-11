import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'aracEkle.dart';
import 'aracListesi.dart';

class RentacarTurlar extends StatefulWidget {
  const RentacarTurlar({
    super.key,
  });

  @override
  State<RentacarTurlar> createState() => _RentacarTurlarState();
}

class _RentacarTurlarState extends State<RentacarTurlar> {
  int item = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
            itemCount: 5,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.topCenter,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Image.asset("assets/images/ayder.jpg"),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 5,
                            left: 5,
                            child: InkWell(
                              onTap: () {
                                showCupertinoModalBottomSheet(
                                  context: context,
                                  builder: (context) => SingleChildScrollView(
                                    controller:
                                        ModalScrollController.of(context),
                                    child: AracListesi(),
                                  ),
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.redAccent),
                                width: MediaQuery.of(context).size.width * 0.27,
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Araç Ver",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        Positioned(
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.topCenter,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 22, 16, 16)
                                      .withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Ayder Yaylası",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_pin,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Çamlıhemşin,Rize",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
