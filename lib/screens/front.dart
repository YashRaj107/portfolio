import 'package:flutter/material.dart';
import 'package:portfolio/apps/BusinessCard/Pages/businesscard.dart';
import 'package:portfolio/screens/front%20grid%20list.dart';

class Front extends StatefulWidget {
  const Front({Key? key}) : super(key: key);

  @override
  State<Front> createState() => _FrontState();
}

class _FrontState extends State<Front> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Portfolio'),
        ),
        drawer: const Drawer(child: BusinessCard(),),
        body: GridView.builder(itemCount:7,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return allappList[index];
            }
            )
    );
  }
}
