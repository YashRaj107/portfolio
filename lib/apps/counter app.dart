import 'package:flutter/material.dart';

void main(){
  runApp(const CounterApp());
}
class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Application',
      theme: ThemeData.light(),
      home: const Homepage(),

    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int counter = 0;
  int yas = 0;
  void increment(){
    counter = counter + 1;
    setState(() {});

  }
  decrement(){
    counter = counter - 1;
    setState(() {});
  }
  increment1(){
    yas = yas + 1;
    setState(() {});

  }
  void decrement1(){
    yas = yas - 1;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:const  Center(child:Text('Counter')),
      ),

      body:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:

        [ Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Team 1 ',
                style: TextStyle(
                    fontSize: 28
                )
            ),
            Text('$counter', style: const TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold
            ),
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                children :[
                  ElevatedButton(child: const Text('+',style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),) ,
                    onPressed: (){
                      increment();
                    },
                  ),
                  ElevatedButton(
                      onPressed: (){decrement();
                      },
                      child: const Text('-',style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                      )
                  )]
            )
          ],
        ),
        ),
          Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('Team 2 ',
                  style: TextStyle(
                      fontSize: 28
                  )
              ),
              Text('$yas', style: const TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold
              ),
              ),
              Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children :[ ElevatedButton(child: const Text('+',style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),) ,
                    onPressed: (){
                      increment1();
                    },
                  ),
                    ElevatedButton(
                        onPressed: (){decrement1();
                        },
                        child: const Text('-',style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                        )
                    )]
              )
            ],
          ),
          ),],
      ),
    );

  }
}

