import 'package:flutter/material.dart';

class RentacarProfil extends StatefulWidget {
  const RentacarProfil({
    super.key,
  });

  @override
  State<RentacarProfil> createState() => _RentacarProfilState();
}

class _RentacarProfilState extends State<RentacarProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(246, 27, 35, 78),
      body: Container(
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
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Divider(
                    endIndent: 100,
                    indent: 100,
                  ),
                  Text(
                    "Güler Oto Kiralama",
                    style: TextStyle(fontSize: 18, color: Colors.white),
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
                        style: TextStyle(fontSize: 15, color: Colors.white),
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
                          style: TextStyle(fontSize: 13, color: Colors.white),
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
              "Araçlarım",
              style: TextStyle(fontSize: 15, color: Colors.white),
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
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("Aracı Kaldır"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Araç"),
      content: Text("Bu Aracı Kaldırmak İster misiniz ?."),
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
