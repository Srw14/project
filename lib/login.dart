import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/forgotpasswprd.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/register.dart';
import 'package:flutter_application_1/square_tile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {


SharedPreferences? _prefs;

TextEditingController _passWordController =TextEditingController();



@override
  void initState() {
    super.initState();
   loadSetting();
  }

  @override
  void dispose() {
   
  }
void loadSetting() async{
_prefs =await SharedPreferences.getInstance();
var tt =_prefs?.getString('username');
print("tttt ${tt}");
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
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Welcome Back', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text('Login with your user and password', style: TextStyle(fontSize: 18,color: Color(0xFFA29F9F)),),
                  Text('To continue using this app.', style: TextStyle(fontSize: 18,color: Color(0xFFA29F9F)),),
                  SizedBox(height: 30,),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      style: TextStyle(fontStyle: FontStyle.italic),
                      decoration: InputDecoration(
                        labelText: "Username",
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
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _passWordController,
                      style: TextStyle(fontStyle: FontStyle.italic),
                      obscureText: true,
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
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Checkbox(
                        value: false, 
                        onChanged: (value) {},
                        ),
                        Text('Remember me',style: TextStyle(color: Color(0xFFA29F9F),),),
                        Spacer(),
                        Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Align(   
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          style:  TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 13),
                          ),
                          onPressed: (){
                             Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return forgotpasswordscreen();
                          },
                        ));
                          },
                          child: const Text('Forgot Password?',style: TextStyle(color: Color(0xFFA29F9F),),),
                        )
                      ),
                    ),
                  ),
                    ],
                  ),
                  SizedBox(  
                    width: 350,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFD4556),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)
                        )
                      ),
                      child: Text("Login", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return homescreen();
                          },
                        ));
                      },
                    ),
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      squaretile(imagesPath: 'assets/images/google.png'),
                      SizedBox(width: 10,),
                      squaretile(imagesPath: 'assets/images/facebook.png'),

                    ],
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(color: Colors.grey),),
                      SizedBox(width: 1,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: TextButton(
                            onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context){
                                      return Registerscreen();
                                  })
                                  );
                                },
                                child: const Text('Register now',style: TextStyle(color: Color(0xFFFD4556),fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                    ],
                  )
                ]
              )
            ]
          ),
        ),
      ),
    );
  }
}