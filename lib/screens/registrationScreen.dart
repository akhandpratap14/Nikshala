import 'package:flutter/material.dart';
import 'package:nikshala/screens/userdata_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String? validatePassword(String value) {
    if (!value.isNotEmpty) {
      return "Password should contain more than 5 characters";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Center(
                          child: Text(
                            'NikShala',
                            style:
                                TextStyle(fontSize: 40.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 120.0,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 20.0, bottom: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Email',
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            hintText: 'Enter your Password',
                            errorText: ''),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 210.0),
                        child: FlatButton(
                          onPressed: () {
                            //FORGOT PASSWORD
                          },
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 120.0, right: 120.0, top: 15.0),
                      child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: MaterialButton(
                            onPressed: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => displayUserData()),
                              );
                            },
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 25),
                            ),
                          )),
                    ),
                  ],
                ),
                height: 550.0,
                decoration: BoxDecoration(
                    color: Color(0xFF2d5fe9),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0))),
              ),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
                  child: FlatButton(
                    onPressed: () {
                      //  CREATE ACCOUNT
                    },
                    child: Center(
                      child: Text(
                        'CREATE AN ACCOUNT',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            decoration: TextDecoration.underline),
                      ),
                    ),
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
