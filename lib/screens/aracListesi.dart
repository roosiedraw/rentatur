import 'package:flutter/material.dart';

class AracListesi extends StatefulWidget {
  const AracListesi({super.key});

  @override
  State<AracListesi> createState() => _AracListesiState();
}

class _AracListesiState extends State<AracListesi> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.39,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.verified,
                          color: Colors.green,
                        ),
                        title: Text(
                          "Mercedes Vito",
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: Text(
                          "2015 Model",
                          style:
                              TextStyle(fontSize: 12, color: Colors.blueGrey),
                        ),
                        titleAlignment: ListTileTitleAlignment.center,
                        trailing: Container(
                          width: 205,
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      "Kapasite 9 kişi ",
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      "Ek Özellikler",
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Tura Araç Ver",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(150, 40),
                backgroundColor: Color.fromARGB(246, 27, 35, 78),
              ),
            )
          ],
        ),
      ),
    );
  }
}
