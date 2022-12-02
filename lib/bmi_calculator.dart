import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  bool isMale = true;
  Color cardClr = Color(0xff1D1E33);
  int weight = 50;
  int age = 20;
  int height = 150;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0A0C23),
        body: Column(
          children: [
            Expanded(
              flex: 10,
              child: Container(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Card(
                          color: isMale == true ? Colors.blueGrey : cardClr,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // ignore: prefer_const_constructors
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 60,
                              ),
                              Text(
                                "MALE",
                                style: myStyle(20, Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Card(
                          color: isMale == false ? Colors.blueGrey : cardClr,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // ignore: prefer_const_constructors
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 60,
                              ),
                              Text(
                                "FEMALE",
                                style: myStyle(20, Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Card(
                  color: cardClr,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: myStyle(20, Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "$height",
                            style: myStyle(40, Colors.white, FontWeight.w600),
                          ),
                          Text(
                            "cm",
                            style: myStyle(14, Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 12),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 15,
                          ),
                          thumbColor: Colors.pink,
                          overlayColor: Colors.grey,
                          activeTrackColor: Colors.white,
                          inactiveTickMarkColor: Colors.red,
                        ),
                        child: Slider(
                          min: 50,
                          max: 250,
                          value: height.toDouble(),
                          onChanged: (double value) {
                            setState(() {
                              height = value.toInt();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              // ignore: sort_child_properties_last
              child: Container(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Card(
                        color: cardClr,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: myStyle(20, Colors.grey),
                            ),
                            Text(
                              "$weight",
                              style: myStyle(30, Colors.white, FontWeight.w600),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 0) {
                                        weight--;
                                      }
                                    });
                                  },
                                  backgroundColor: Colors.grey.withOpacity(0.3),
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  backgroundColor: Colors.grey.withOpacity(0.3),
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: Card(
                        color: cardClr,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: myStyle(20, Colors.grey),
                            ),
                            Text(
                              "$age",
                              style: myStyle(30, Colors.white, FontWeight.w600),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age > 0) {
                                        age--;
                                      }
                                    });
                                  },
                                  backgroundColor: Colors.grey.withOpacity(0.3),
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  backgroundColor: Colors.grey.withOpacity(0.3),
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              flex: 10,
            ),
            Expanded(
              // ignore: sort_child_properties_last
              child: GestureDetector(
                onTap: () {
                  var heightSquare = height * height / 10000;
                  var result = weight / heightSquare;

                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            "BMI Result",
                            style: myStyle(20, Colors.black, FontWeight.w600),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your BMI is = ${result.toStringAsFixed(3)}",
                                style: myStyle(18, Colors.black),
                              ),
                              Text(
                                result <= 19
                                    ? "You are under weight, please eat more."
                                    : result <= 25
                                        ? "You are perfect."
                                        : "You are over weight.",
                                style: myStyle(18, Colors.black),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: Colors.pink,
                  child: Text(
                    "CALCULATE",
                    style: myStyle(25, Colors.white, FontWeight.w600),
                  ),
                ),
              ),
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}

myStyle(double fs, Color clr, [FontWeight? fw]) {
  return TextStyle(fontSize: fs, color: clr, fontWeight: fw);
}
