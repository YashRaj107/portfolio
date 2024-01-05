import 'package:flutter/material.dart';


class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  TextEditingController _heightCont = TextEditingController();
  TextEditingController _weightCont = TextEditingController();
  double bmi= 0;
  String message = '';
  void bmiCalculate(double h,double w){
    double height = h/100;
    double weight = w ;
    bmi = weight / (height * height);
    print('BMI value: $bmi');
    if (bmi < 18.5) {
      message = 'Under Weight';
    }
    else if(bmi >= 18.5 && bmi < 24.9) {
      message = 'Normal Weight';
    }
    else if(bmi >= 24.9 && bmi < 29.9) {
      message = 'Over Weight';
    }
    else {
      message = 'Obesity';

    }

    setState(() {
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: const [
                Expanded(
                  child: Card(
                    child: Icon(
                      Icons.female,
                      size: 120,
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Icon(
                      Icons.male,
                      size: 120,
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text(
                    'Your Height in CM',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  TextField(
                    controller: _heightCont,
                    decoration:const InputDecoration(
                      suffix: Text('Cm'),
                      label: Center(child: const Text('Height(Cm)'),
                      ),
                    ),
                    style: TextStyle(fontSize: 36,),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.numberWithOptions(),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Your Weight in KG',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  TextField(
                    controller: _weightCont,
                    decoration: const InputDecoration(
                      suffix: Text('Kg'),
                      label: Center(child: const Text('Weight(kg)'),
                      ),
                    ),
                    style: TextStyle(fontSize: 36,),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.numberWithOptions(),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text(
                'Your BMI is',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            Center(
              child: Text(
                '${bmi.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 80,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(_heightCont.text);
                print(_weightCont.text);
                bmiCalculate(double.parse(_heightCont.text),
                    double.parse(_weightCont.text));
              },
              child: const Text(
                'Calculate',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}