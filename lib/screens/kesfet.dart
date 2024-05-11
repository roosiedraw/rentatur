import 'package:flutter/material.dart';

class kesfet extends StatefulWidget {
  const kesfet({
    super.key,
  });

  @override
  State<kesfet> createState() => _kesfetState();
}

class _kesfetState extends State<kesfet> {
  int itemcount = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Divider(),
                  Card(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset("assets/images/ayder.jpg")),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Ayder Yaylası",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "Ayder Yaylası dgahfja p  juhfbshkjl fma h bwndşkaw mdabhk şw nbjhvbnşai wk  dbgıaodjwa vd awbned",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
