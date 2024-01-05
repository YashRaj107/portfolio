import 'package:flutter/material.dart';

import '../widgets/widgets list.dart';

class intro extends StatelessWidget {
  intro(
      {Key? key,
      required this.name,
      required this.Explanation,
      required this.Widgets,
      required this.approute})
      : super(key: key);

  final String name;
  final String Explanation;
  final String Widgets;
  final Widget approute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CircleAvatar(
            radius: 100,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.black87),
          ),
          Text(Explanation),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => approute));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Continue'),
                  Icon(Icons.arrow_forward_ios),
                ],
              )),
        ],
      ),
    );
  }
}
