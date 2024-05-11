import 'package:flutter/material.dart';

class GelenTalepler extends StatefulWidget {
  const GelenTalepler({super.key});

  @override
  State<GelenTalepler> createState() => _GelenTaleplerState();
}

class _GelenTaleplerState extends State<GelenTalepler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(246, 27, 35, 78),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.event_note_outlined,
                        color: Colors.green,
                      ),
                      title: Text(
                        "Ayder Turu",
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        "güzelce mahallesi 1584.sokak kat 1 daire no 6 ortahisar/TRABZON",
                        style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                      ),
                      titleAlignment: ListTileTitleAlignment.center,
                      trailing: Container(
                        width: 150,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    "15.08.2023 saat 8",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    " Ücret 500 Tl",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                              child: InkWell(
                                onTap: () {
                                  showAlertDialog(context);
                                },
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.cancel),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("Talebi Kaldır"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Talep"),
      content: Text("Bu Tur Talebini Kaldırmak İster misiniz ?."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
