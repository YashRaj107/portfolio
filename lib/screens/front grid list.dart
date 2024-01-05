import 'package:flutter/material.dart';
import 'package:portfolio/apps/BMIcalci/main.dart';
import 'package:portfolio/apps/BusinessCard/Pages/businesscard.dart';
import 'package:portfolio/apps/BusinessCard/main.dart';
import 'package:portfolio/apps/counter%20app.dart';
import 'package:portfolio/apps/instagram/main.dart';
import 'package:portfolio/apps/mywallet/main.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/screens/intro%20page.dart';

import '../apps/weather/main.dart';

List<Allapp> allappList = [
  Allapp(
      name: 'Counter App',
      page: intro(
        name: 'Counter App',
        Widgets: '',
        Explanation: 'the app is my first flutter app,It contains basic add subtract function button with independently from other team scores',
        approute: CounterApp(),
      )),
  Allapp(
      name: 'ToDo List',
      page: intro(
        name: 'ToDo List',
        Widgets: '',
        Explanation: 'This app is of creating forms and deleting it with filling a form and creating a business card from it.',
        approute: Business() ,
      )),
  Allapp(
      name: 'Instagram',
      page: intro(
        name: 'Instagram',
        Widgets: '',
        Explanation: 'This app contains instagram prototype',
        approute: insta(),
      )),
  Allapp(
      name: 'My Wallet',
      page: intro(
        name: 'My Wallet',
        Widgets: '',
        Explanation: 'This app is wallet app prototype',
        approute: Wallet(),
      )),
  Allapp(
      name: 'Weather App',
      page: intro(
        name: 'Weather App',
        Widgets: '',
        Explanation: 'This is the UI of weather app which shows us the humidity in air , temperature, location ,etc. And it is based on cyan theme.',
        approute: Weather(),
      )),
  Allapp(
      name: 'BMI Calculator',
      page: intro(
        name: 'BMI Calculator',
        Widgets: '',
        Explanation: 'This is BMI calculating app which takes input of height and weight and calculates and informs us our BMI level.',
        approute: Calci() ,
      )),
  Allapp(
      name: 'Business Card',
      page: intro(
        name: 'Business Card',
        Widgets: 'widget 1',
        Explanation: 'This is the official Business card app.',
        approute: BusinessCard(),
      )
  ),
];

class Allapp extends StatelessWidget {
  Allapp({Key? key, required this.name, required this.page}) : super(key: key);
  final String name;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder:  (context) => page));
        },
        child: Card(
          margin: EdgeInsets.fromLTRB(3, 3, 3, 3),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 50,
              ),
              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}
