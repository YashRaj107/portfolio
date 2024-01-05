import 'package:flutter/material.dart';

void main() {
  runApp(const Wallet());
}

class Wallet extends StatelessWidget {
  const Wallet ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my wallet',
      theme: ThemeData(
        primaryColorDark: Colors.cyanAccent,
      ),
      home: const mywallet(),
    );
  }
}

class mywallet extends StatefulWidget {
  const mywallet({Key? key}) : super(key: key);

  @override
  State<mywallet> createState() => _mywalletState();
}

class _mywalletState extends State<mywallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home,
              size: 55,
            ),
            Icon(Icons.messenger_outline, size: 55),
            Icon(
              Icons.notifications,
              size: 55,
            ),
            Icon(
              Icons.person,
              size: 55,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SafeArea(
                  child: CircleAvatar(
                    radius: 36,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('janath'),
                  ],
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.align_horizontal_left),
                ),
              ],
            ),
            Text(
              'My Wallet',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
              children: [Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.blueAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Total Balance',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      '6,354 MLR',
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.yellow,
                      ),
                    ),
                    const Text(
                      'Eq:10,000',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(' + Top Up'),
                    ),
                  ],
                ),
              ),
              ],
            ),
            Text(
              'Operations',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.grey[300],
                  height: 80,
                  width: 80,
                  child: Icon(Icons.nordic_walking_outlined),
                ),
                Container(
                  color: Colors.grey[300],
                  height: 80,
                  width: 80,
                  child: Icon(Icons.phone),
                ),
                Container(
                  color: Colors.grey[300],
                  height: 80,
                  width: 80,
                  child: Icon(Icons.calendar_today_outlined),
                ),
                Container(
                  color: Colors.grey[300],
                  height: 80,
                  width: 80,
                  child: Icon(Icons.double_arrow_sharp),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Transfer'),
                Text('Airtime'),
                Text('Paybills'),
                Text('QR pay')
              ],
            ),
            Column(
              children: [
                Text('Transactions',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Icon(Icons.hd),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Flight Ticket'),
                      Text('23 Feb 2020'),
                    ],
                  ),
                  Container(
                    color: Colors.white38,
                    child: Text('-20MLR'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
