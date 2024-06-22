import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(GreaterNum());
}

class GreaterNum extends StatefulWidget {
  @override
  State<GreaterNum> createState() => _GreaterNumState();
}

class _GreaterNumState extends State<GreaterNum> {
  int number1 = 1;
  int number2 = 2;
  Color button1 = Color(0xff2D44B7);
  Color button2 = Color(0xff2D44B7);

  void updateNumbers() {
    setState(() {
      number1 = Random().nextInt(100) ;
      number2 = Random().nextInt(100);
      button1 = Color(0xff2D44B7);
      button2 = Color(0xff2D44B7);

    });
  }

  void updateColor(int selectedNumber) {
    setState(() {
      if (selectedNumber == max(number1, number2)) {
        button1 = selectedNumber == number1 ? Colors.green : Color(0xff2D44B7);
        button2 = selectedNumber == number2 ? Colors.green :Color(0xff2D44B7);
      }else {
        button1 = selectedNumber == number1 ? Colors.red : Color(0xff2D44B7);
        button2 = selectedNumber == number2 ? Colors.red : Color(0xff2D44B7);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff2D44B7),
          title: Text(
            'Greater Number',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:EdgeInsets.only(bottom: 50,right: 50),
                child: Text(
                    "Choose The Greatest Number",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 50 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      updateColor(number1);
                    },
                    child: Text(
                      number1.toString(),
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(160, 220),
                      primary: button1,
                    ),
                  ),
                  SizedBox(width: 50),
                  ElevatedButton(
                    onPressed: () {
                      updateColor(number2);

                    },
                    child: Text(
                      number2.toString(),
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(160, 220),
                      primary: button2,
                    ),
                  ),


                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top: 100,left: 5),
                child: ElevatedButton(
                    onPressed: (){
                      updateNumbers();
                    },
                    child: Text(
                        "Next",
                      style: TextStyle(
                        fontSize: 30
                      ),
                    ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 60),
                    primary: Color(0xff2D44B7)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
