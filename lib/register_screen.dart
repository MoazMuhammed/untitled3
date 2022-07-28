import 'package:flutter/material.dart';
import 'package:untitled3/first_screen.dart';
import 'package:untitled3/main.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Register Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             SizedBox(height: 15),
             Text("Welcome! Create Account",
                style: TextStyle(
                  fontSize: 20,
                )),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'E-mail',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLength: 12,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Phone',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password_outlined),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                      child:  Text(
                        "Sign up",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
