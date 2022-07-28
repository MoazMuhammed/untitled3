import 'package:flutter/material.dart';
import 'package:untitled3/first_screen.dart';

class SetNewPassword extends StatelessWidget {
  const SetNewPassword({Key? key}) : super(key: key);

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
              child: Text("Reset your new password", textAlign: TextAlign.center,style: TextStyle (fontSize: 20),
              ),
            )
            ,
            SizedBox(height: 20,),
            TextFormField(
              textInputAction: TextInputAction.next ,
              keyboardType: TextInputType.name,
              decoration:  InputDecoration(

                hintText: "New password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.password,
                ),
              ),
            ),
            SizedBox(height: 15,),

            TextFormField(
              textInputAction: TextInputAction.next ,
              keyboardType: TextInputType.name,
              decoration:  InputDecoration(
                hintText: "Confirm new password",
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
                    builder: (context) =>  FirstScreen()),
              );
            }, child:  Text("Confirm"))
          ],
        ),
      ),

    );
  }
}
