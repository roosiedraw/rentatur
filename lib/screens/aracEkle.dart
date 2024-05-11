import 'package:flutter/material.dart';

class AracEkle extends StatefulWidget {
  const AracEkle({super.key});

  @override
  State<AracEkle> createState() => _AracEkleState();
}

class _AracEkleState extends State<AracEkle> {
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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.065,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade100)),
                          labelText: "   Araç Marka",
                          enabledBorder: InputBorder.none,
                          labelStyle: const TextStyle(color: Colors.grey)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.065,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade100)),
                          labelText: "   Araç Model",
                          enabledBorder: InputBorder.none,
                          labelStyle: const TextStyle(color: Colors.grey)),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 30,
              endIndent: 30,
              color: Color.fromARGB(246, 27, 35, 78),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.065,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade100)),
                          labelText: "   Araç Yaşı",
                          enabledBorder: InputBorder.none,
                          labelStyle: const TextStyle(color: Colors.grey)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.065,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade100)),
                          labelText: "   Kapasite",
                          enabledBorder: InputBorder.none,
                          labelStyle: const TextStyle(color: Colors.grey)),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 30,
              endIndent: 30,
              color: Color.fromARGB(246, 27, 35, 78),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade200),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.2,
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey.shade100)),
                    labelText: "   Eklemek İstediğiniz Özellikler",
                    enabledBorder: InputBorder.none,
                    labelStyle: const TextStyle(color: Colors.grey)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Araç Ekle",
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
