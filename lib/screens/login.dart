import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Container(
          padding: EdgeInsets.symmetric(vertical: 32),
          child: ListView(
            children: [
              Image(image: AssetImage('images/app-logo.jpg'), height: 120),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 40, right: 40, bottom: 10),
                  child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(),
                        ),
                      ),
                      onChanged: (String value) {
                        username = value;
                      },
                      validator: (val) {
                        if (val.length == 0) {
                          return "Email cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(),
                        ),
                      ),
                      onChanged: (String value) {
                        username = value;
                      },
                      validator: (val) {
                        if (val.length == 0) {
                          return "Email cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                  ])),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image(
                  alignment: Alignment.center,
                  image: AssetImage('images/login.png'),
                ),
              ),
              SizedBox(height: 10),
              // Flexible(
              //     child: 
                Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Choose Your Language',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                            padding: EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                            color: Theme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            onPressed: () {
                              print('English pressed');
                            },
                            child: Text(
                              'English',
                              style: TextStyle(color: Colors.white, fontSize: 17),
                            )),
                        FlatButton(
                            padding: EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            color: Theme.of(context).primaryColor,
                            onPressed: () {
                              print('Hindi Pressed');
                            },
                            child: Text(
                              'Hindi',
                              style: TextStyle(color: Colors.white, fontSize: 17),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: FlatButton(
                          onPressed: () {
                            print('Login clicked');
                            /*

                            WRITE LOGIN CONDITION HERE



                            */
                            Navigator.pushNamed(context, 'homescreen');
                          },
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            'Log In',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
