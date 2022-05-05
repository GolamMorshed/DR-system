import 'package:flutter/material.dart';

class GetResult extends StatefulWidget {
  @override
  _GetResultState createState() => _GetResultState();
}

class _GetResultState extends State<GetResult> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login2.jpeg'),fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        //backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 140),
              child: Text("Report", style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.17,
                    right: 35,
                    left: 35
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text("Name: Riyal\nAge:30\nRight Eye: DR Positive\nLeft Eye: DR Negative", style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,),
                      ),

                    ),

                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Save and Exit',style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700
                        ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){
                              Navigator.pushNamed(context, 'add_patients');
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){

                        },
                          child:
                          Text('',
                              style: TextStyle(decoration: TextDecoration.underline,
                                fontSize: 18,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
