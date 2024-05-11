import 'package:flutter/material.dart';
import 'package:rentatur/screens/rentacarHome.dart';

import 'home.dart';

class RegisterRentacar extends StatefulWidget {
  const RegisterRentacar({super.key});

  @override
  State<RegisterRentacar> createState() => _RegisterRentacarState();
}

class _RegisterRentacarState extends State<RegisterRentacar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(246, 27, 35, 78),
      body: SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.56,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.person,
                                color: Colors.red,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100)),
                              labelText: "Adınız ve soyadınız",
                              enabledBorder: InputBorder.none,
                              labelStyle: const TextStyle(color: Colors.grey)),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.person,
                                color: Colors.red,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100)),
                              labelText: "Firma Adı",
                              enabledBorder: InputBorder.none,
                              labelStyle: const TextStyle(color: Colors.grey)),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.location_city,
                                color: Colors.red,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100)),
                              labelText: "Adresiniz",
                              enabledBorder: InputBorder.none,
                              labelStyle: const TextStyle(color: Colors.grey)),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.phone,
                                color: Colors.red,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100)),
                              labelText: "Telefon Numaranız",
                              enabledBorder: InputBorder.none,
                              labelStyle: const TextStyle(color: Colors.grey)),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.email,
                                color: Colors.red,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100)),
                              labelText: "Email adresiniz",
                              enabledBorder: InputBorder.none,
                              labelStyle: const TextStyle(color: Colors.grey)),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.vpn_key,
                                color: Colors.red,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100)),
                              labelText: "Şifreniz",
                              enabledBorder: InputBorder.none,
                              labelStyle: const TextStyle(color: Colors.grey)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    child: Container(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.amber,
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => rentacarHome()));
                        },
                        child: const Center(
                          child: Text(
                            "KAYIT OL",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
