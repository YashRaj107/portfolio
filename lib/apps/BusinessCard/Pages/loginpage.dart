import 'package:flutter/material.dart';
import 'BusinessCardHolder.dart';

class loginpage extends StatelessWidget {
  loginpage({Key? key}) : super(key: key);
 TextEditingController _pass = TextEditingController();
 TextEditingController _user = TextEditingController();
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(
                        Icons.android,
                        size: 200,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text('Email'), border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: _pass,
                        obscureText: true,
                        
                        decoration: InputDecoration(
                            hintText: 'password',
                            prefixIcon: const Icon(Icons.lock),
                            suffix: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
                            label: Text('Password'),
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/CardDetails');},
                            child: Text('Login'),
                          ),
                          Text('Forgot Password?'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/form1');
                        },
                        child: Text('Create New Account'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
