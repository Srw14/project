//หน้าลืมรหัส
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class forgotpasswordscreen extends StatelessWidget {
  const forgotpasswordscreen({Key? key}) :super (key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                "Don't worry! It occurs. Please enter your email address. ",
                style: TextStyle(
                  color: Color(0xFF8391A1),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                child: TextFormField(
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
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: Color(0xFFFD4556),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Send",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}