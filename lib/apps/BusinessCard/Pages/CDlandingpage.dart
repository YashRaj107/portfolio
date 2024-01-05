import 'package:flutter/material.dart';
import 'formnew.dart';

import 'BusinessCardHolder.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BusinessCard',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey[500],
              fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => form1(),
                  ),
                );
              },
              icon: Icon(
                Icons.edit,
                size: 40,
                color: Colors.grey[600],
              ))
        ],
      ),
      body: ListView.builder(
          itemCount: businessCardHolderList.length,
          itemBuilder: (BuildContext context, int index) {
            return businessCardHolderList[index];
          }),
    );
  }
}
