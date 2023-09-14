import 'package:flutter/material.dart';

enum Gender {
  Male,
  Female,
}

class selectgamepage extends StatefulWidget {

  @override
  _selectgamepageState createState() => _selectgamepageState();
}

class _selectgamepageState extends State<selectgamepage> {
  Gender? _Gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Gender',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile<Gender>(
                          contentPadding: EdgeInsets.only(left: 15.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          value: Gender.Female,
                          groupValue: _Gender,
                          dense: true,
                          title: Text(
                            Gender.Female.name,
                            style: TextStyle(fontSize: 20),
                          ),
                          onChanged: (val) {
                            setState(() {
                              _Gender = val;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                        child: RadioListTile<Gender>(
                          contentPadding: EdgeInsets.only(left: 15.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          value: Gender.Male,
                          groupValue: _Gender,
                          dense: true,
                          title: Text(
                            Gender.Male.name,
                            style: TextStyle(fontSize: 20),
                          ),
                          onChanged: (val) {
                            setState(() {
                              _Gender = val;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}