import 'package:flutter/material.dart';
import 'package:twitter/screens/login/sign-up.dart';

const kTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 35);

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome Back!Log in',
                style: kTextStyle, textAlign: TextAlign.left),
            Text('to see the latest',
                style: kTextStyle, textAlign: TextAlign.left),
            ElevatedButton(
              onPressed: () {},
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                Icon(Icons.g_translate_outlined),
                Text("Continue with Google"),
              ]),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                minimumSize: MaterialStateProperty.all<Size>(
                    Size(screenWidth * 0.9, 28)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Log In",
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                minimumSize: MaterialStateProperty.all<Size>(
                    Size(screenWidth * 0.9, 28)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Text('Dont have an account?'),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              child: Text(
                'Sign-Up',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
