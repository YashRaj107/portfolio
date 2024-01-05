import 'bmi_calculator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController _number = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(32, 8, 32, 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SafeArea(
                    child: CircleAvatar(
                      radius: 110,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              label: Text('Phone Number'),
                            ),
                            controller: _number,
                          ),
                          TextField(
                            controller: _pass,
                            obscureText: true,
                            decoration: InputDecoration(
                              label: Text('Password'),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BMICalculator()));
                            },
                            child: Text("Login"),
                          ),
                          Text(
                            'Forgot password?No yawa. Tap me',
                            style: TextStyle(
                              color: Colors.white38,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BMICalculator()));
                            },
                            child: Text('No Account? Sign up'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
