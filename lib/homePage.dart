import 'dart:math';

import 'package:bmi/constantent.dart';
import 'package:bmi/leftWidget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var heightController = TextEditingController();
  var weightController = TextEditingController();
  var result = 0.0;
  var text=' ';

  state( result) {
    if (result >= 25) {
      return 'you are over weight';
    } else if (result >= 18.5 && result < 25) {
      return 'you are normal weight';
    }

    return 'you are under weight';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: mainColor,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: accentColor,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: heightController,
                    cursorColor: accentColor,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Height',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        )),
                    style: TextStyle(
                      fontSize: 20,
                      color: accentColor,
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: weightController,
                    cursorColor: accentColor,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Weight',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        )),
                    style: TextStyle(
                      fontSize: 20,
                      color: accentColor,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                try{
                  double height = double.parse(heightController.text);
                  double weight = double.parse(weightController.text);
                  if(height==null)
                    {
                      height=0;
                    }
                  if(weight==null)
                  {
                    weight=0;
                  }

                  result = weight / (height * height);
                  setState(() {
                    result = weight / pow((height / 100), 2);
                  });
                  text=state(result);
                }
                catch(onerror){
                  print(onerror);
                }
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    color: accentColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(

              result.toStringAsFixed(2),
              style: TextStyle(
                color: accentColor,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Visibility(
              visible: true,
              child: Text(
                text.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: accentColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                left(50.0),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                left(70.0),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                left(50.0),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                right(50.0),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                right(50.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
