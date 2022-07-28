import 'package:flutter/material.dart';
import 'package:untitled3/set_new_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Center(
              child: Text("Enter Your Information to reset your password", textAlign: TextAlign.center,style: TextStyle (fontSize: 20),
              ),
            )
            ,
             SizedBox(height: 20,),
            TextFormField(
              textInputAction: TextInputAction.next ,
              keyboardType: TextInputType.emailAddress,
              decoration:  InputDecoration(

                hintText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email,
                ),
              ),
            ),
             SizedBox(height: 15,),

            TextFormField(
              textInputAction: TextInputAction.next ,
              keyboardType: TextInputType.name,


              decoration:  InputDecoration(

                hintText: "UserName",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.people,
                ),
              ),
            ),
             SizedBox(height: 15,),

            TextFormField(
              textInputAction: TextInputAction.next ,
              keyboardType: TextInputType.name,
              decoration:  InputDecoration(
                hintText: "Not Required",
                labelText: "Last Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.password,
                ),
              ),
            ),
             SizedBox(height: 15,),

            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  SetNewPassword()),
              );
            }, child:  Text("Continue"))
          ],
        ),
      ),

    );
  }
}
