//หน้าสมัคร
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/api_connection/api_connection.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/otp.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Gender {
  Male,
  Female,
}

class Registerscreen extends StatefulWidget {
  // final Future<FirebaseApp> firebase = Firebase.initializeApp();
  @override
  _RegisterscreenState createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  Gender? _Gender;
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _FirstNameController =TextEditingController();
  TextEditingController _LastNameController =TextEditingController();
  TextEditingController _passWordController = TextEditingController();
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _passWordConfirmController = TextEditingController();
  SharedPreferences? _prefs;

  void _handleSave(BuildContext context) async {
    if (_userNameController.text == '') {
      return _alert(context, "username");
    } else if (_passWordController.text != _passWordConfirmController.text) {}

    _prefs = await SharedPreferences.getInstance();
    _prefs?.setString('username', _userNameController.text);
    registerUser(
            _userNameController.text, _FirstNameController.text, _LastNameController.text, _EmailController.text, _passWordController.text).then((value) => {
              print("ddd${value}"),
              if (value) {Navigator.pushNamed(context, '/')}
            });
  }

  void _alert(BuildContext context, String alertFieldName) {
    showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('$alertFieldName is empty'),
          content: Text('Please enter $alertFieldName!'),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Center(
        child: Form(
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Create a new account',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'It is quick and easy.',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _FirstNameController,
                      style: TextStyle(fontStyle: FontStyle.italic),
                      decoration: InputDecoration(
                        labelText: "First Name",
                        hintText: "Enter your first name",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(Icons.perm_identity_rounded),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 42,
                          vertical: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Color(0xFFA29F9F)),
                          gapPadding: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _LastNameController,
                      style: TextStyle(fontStyle: FontStyle.italic),
                      decoration: InputDecoration(
                        labelText: "Last Name",
                        hintText: "Enter your last name",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(Icons.perm_identity_rounded),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 42,
                          vertical: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Color(0xFFA29F9F)),
                          gapPadding: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _userNameController,
                      style: TextStyle(fontStyle: FontStyle.italic),
                      decoration: InputDecoration(
                        labelText: "UserName",
                        hintText: "Enter your username",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(Icons.perm_identity_rounded),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 42,
                          vertical: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Color(0xFFA29F9F)),
                          gapPadding: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller:_EmailController,
                      style: TextStyle(fontStyle: FontStyle.italic),
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Enter your email",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(Icons.mail_outline),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 42,
                          vertical: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Color(0xFFA29F9F)),
                          gapPadding: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller:_passWordController,
                      style: TextStyle(fontStyle: FontStyle.italic),
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your password",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(Icons.https_outlined),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 42,
                          vertical: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Color(0xFFA29F9F)),
                          gapPadding: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      style: TextStyle(fontStyle: FontStyle.italic),
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                        hintText: "Enter your confirm password",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(Icons.https_outlined),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 42,
                          vertical: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: Color(0xFFA29F9F)),
                          gapPadding: 10,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // Container(
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(left: 25.0),
                  //     child: Align(
                  //       alignment: Alignment.centerLeft,
                  //       child: Text(
                  //         'Gender',
                  //         style: TextStyle(
                  //             fontSize: 20, fontWeight: FontWeight.bold),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: RadioListTile<Gender>(
                  //         contentPadding: EdgeInsets.only(left: 15.0),
                  //         shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(5.0)),
                  //         value: Gender.Female,
                  //         groupValue: _Gender,
                  //         dense: true,
                  //         title: Text(
                  //           Gender.Female.name,
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         onChanged: (val) {
                  //           setState(() {
                  //             _Gender = val;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     SizedBox(width: 5.0),
                  //     Expanded(
                  //       child: RadioListTile<Gender>(
                  //         contentPadding: EdgeInsets.only(left: 15.0),
                  //         shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(5.0)),
                  //         value: Gender.Male,
                  //         groupValue: _Gender,
                  //         dense: true,
                  //         title: Text(
                  //           Gender.Male.name,
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         onChanged: (val) {
                  //           setState(() {
                  //             _Gender = val;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: 350,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFD4556),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18))),
                      child: Text(
                        "Create account",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context){
                        //     return otpscreen();
                        // })
                        // );
                        _handleSave(context);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You already have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return loginscreen();
                              }));
                            },
                            child: const Text(
                              'Login now',
                              style: TextStyle(
                                  color: Color(0xFFFD4556),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
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
