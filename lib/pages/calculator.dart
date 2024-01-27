import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget extends StatefulWidget {
  static const multiplySign = "\u00D7";
  static const divideSign = "\u00F7";
  static const subtractSign = "\u2212";
  static const equalSign = "\u003D";

  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var _number = "";
  var _start = "0";

  Widget Background({
    required String text,
    required Color color,
    IconData? icon,
  }) {
    return Container(
      width: 50.0,
      height: 100.0,
      padding: EdgeInsets.all(5.0),
      //color: color,
      child: icon != null // Check if an icon is provided
          ? Icon(
              icon,
              color: Colors.black,
              size: 20.0,
            )
          : Text(
              text,
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const multiplySign = "\u00D7";
  const divideSign = "\u00F7";
  const subtractSign = "\u2212";
  const equalSign = "\u003D";
    var itemList = [
      Expanded(child: Background(text: "C", color: Colors.pink.shade100)),
      Expanded(
        child: Background(
            text: "", color: Colors.blue.shade100, icon: Icons.backspace_outlined),
      ),
      Expanded(child: Background(text: "7", color: Colors.red.shade100)),
      Expanded(child: Background(text: "8", color: Colors.red.shade100)),
      Expanded(child: Background(text: "9", color: Colors.red.shade100)),
      Expanded(child: Background(text: divideSign, color: Colors.blue.shade100)),
      Expanded(child: Background(text: "4", color: Colors.red.shade100)),
      Expanded(child: Background(text: "5", color: Colors.red.shade100)),
      Expanded(child: Background(text: "6", color: Colors.red.shade100)),
      Expanded(child: Background(text: multiplySign, color: Colors.blue.shade100)),
      Expanded(child: Background(text: "1", color: Colors.red.shade100)),
      Expanded(child: Background(text: "2", color: Colors.red.shade100)),
      Expanded(child: Background(text: "3", color: Colors.red.shade100)),
      Expanded(child: Background(text: subtractSign, color: Colors.blue.shade100)),
      Expanded(flex: 3,child: Background(text: "0", color: Colors.red.shade100)),
      Expanded(flex: 1,child: Background(text: "+", color: Colors.red.shade100)),
      Expanded(child: Background(text: equalSign, color: Colors.purple.shade100)),
    ];

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Container()),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(_icon, size: 100.0),
                  Text(
                    _start,
                    style: GoogleFonts.roboto(
                      color: Color(0xFF808080),
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: Container()),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    itemList[0],
                    SizedBox(
                      width: 5,
                    ),
                    itemList[1],
                    SizedBox(
                      width: 5,
                    ),
                    
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    itemList[2],
                    itemList[3],
                    SizedBox(
                      width: 10,
                    ),
                    itemList[4],
                    SizedBox(
                      width: 10,
                    ),
                    itemList[5],
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    itemList[6],
                    SizedBox(
                      width: 10,
                    ),
                    itemList[7],
                    SizedBox(
                      width: 10,
                    ),
                    itemList[8],
                    itemList[9],
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    itemList[10],
                    itemList[11],
                    SizedBox(
                      width: 10,
                    ),
                    itemList[12],
                    SizedBox(
                      width: 10,
                    ),
                    itemList[13],
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    itemList[14],
                    itemList[15],
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    itemList[16],
                    
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            _start = "______";
                          });
                        },
                        child: Icon(
                          Icons.close,
                          size: 40,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    itemList[9],
                    SizedBox(
                      width: 40,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            if (_start.isNotEmpty) {
                              int lastindex =
                                  _start.lastIndexOf(RegExp('[^_]'));
                              if (lastindex != -1) {
                                _start = _start.replaceRange(
                                    lastindex, lastindex + 1, '_');
                              }
                            } else {
                              _start = "______";
                            }
                          });
                        },
                        child: Icon(Icons.backspace_outlined,
                            size: 40, color: Colors.black)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
