import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login2.jpeg'),fit: BoxFit.cover
          )
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text("Privacy And Policy"),
            leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pushNamed(context, 'dashboard');
              },
            ),
          ),


    body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 140),
              child: Text("Write Privacy and Policy here\n\nWhole app is managed and organized by Unimas", style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
