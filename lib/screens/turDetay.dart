import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class turDetayVeSecim extends StatefulWidget {
  turDetayVeSecim({
    super.key,
  });

  @override
  State<turDetayVeSecim> createState() => _turDetayVeSecimState();
}

class _turDetayVeSecimState extends State<turDetayVeSecim> {
  Color selectedColor = Colors.white;
  int selectedIndex = 0;
  DateTime _dateTime = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset("assets/images/ayder.jpg"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.05,
                child: Text(
                  "Ayder Yaylası",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.97,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Text(
                  "Ayder Yaylası dboa ns hbdpaw obd boawıpd şandabnd nwapşmd a budoawkmdfab wnd şkanbka bnwşkd wanbkd baowdmawbwdabd şa wdlad andwkabda",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.97,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: selectedIndex == index
                                          ? Colors.green
                                          : Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                  color: selectedIndex == index
                                      ? Colors.green.shade100
                                      : Colors.blueGrey.shade100),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(
                                      image: AssetImage(
                                          "assets/images/mini-van.png"),
                                      height: 50),
                                  Text(
                                    "Mercedes Vito",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                  Text("Ücret:550 TL",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black))
                                ],
                              ),
                            ),
                          ),
                        );
                      })),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.teal,
                          ),
                          Text("Tarih Seç")
                        ],
                      ),
                      onTap: () {
                        setState(() {
                          _selectDate(context);
                        });
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 2)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: Column(
                      children: [
                        Text(
                          DateFormat('dd.MM.yyyy').format(_dateTime),
                          style: TextStyle(
                              fontSize: 15,
                              wordSpacing: 2,
                              decoration: TextDecoration.underline),
                        ),
                        Text(
                          "${selectedTime.hour} : ${selectedTime.minute}",
                          style: TextStyle(
                            fontSize: 12,
                            wordSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Tura Katıl"),
                style: ElevatedButton.styleFrom(fixedSize: Size(150, 40)),
              )
            ],
          ),
        ),
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    final TimeOfDay? netTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay(
            hour: TimeOfDay.hoursPerDay, minute: TimeOfDay.minutesPerHour));
    if (picked != null && picked != _dateTime) {
      setState(() {
        _dateTime = picked;
        selectedTime = netTime!;
      });
    }
  }
}
