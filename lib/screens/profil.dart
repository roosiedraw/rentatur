import 'package:flutter/material.dart';

class profil extends StatelessWidget {
  const profil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Ahmet Ekinci",
                  style: TextStyle(fontSize: 18),
                ),
                Divider(
                  endIndent: 100,
                  indent: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "İletişim",
                      style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue,
                      size: 15,
                    ),
                    Text(
                      "5422895258",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Adres",
                      style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue,
                      size: 15,
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        "güzelce mahallesi 1584.sokak kat 1 daire no 6 ortahisar/TRABZON",
                        style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                        textAlign: TextAlign.center,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Text(
            "Katıldığım Turlar",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
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
                        "Ayder Turu",
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        "15.08.2023 saat 8",
                        style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                      ),
                      titleAlignment: ListTileTitleAlignment.center,
                      trailing: Container(
                        width: 205,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    "Tur aracı xxx ",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    "Toplam Ücret 500 Tl",
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
                  );
                }),
          )
        ],
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
