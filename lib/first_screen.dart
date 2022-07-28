import 'package:flutter/material.dart';
import 'package:untitled3/forget_password.dart';
import 'package:untitled3/home.dart';
import 'package:untitled3/main.dart';
import 'package:untitled3/register_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Login Screen"),
          ),
          body: Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Login Screen",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
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
                  height: 15,
                ),
                Container(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  ForgetPassword()),);
                      },
                      child:  Text("Forget Password ??")),
                ),
                SizedBox(height: 15,),

                Container(
                    width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  Hi()),);
                      },
                      child:  Text("Sign in")),
                )   ,SizedBox(
                  width: 20,
                ),

                Container(
                    width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  RegisterScreen()),);
                      },
                      child:  Text("Sign up")),


                ),
                SizedBox(
                  width: 20,
                ),


              ],
            ),
          ),
        ));
  }
}
