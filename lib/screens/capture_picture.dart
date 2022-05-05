import 'package:flutter/material.dart';

class CaptureImage extends StatefulWidget {
  @override
  _CaptureImageState createState() => _CaptureImageState();
}

class _CaptureImageState extends State<CaptureImage> {
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
              child: Text("Capture Eye Images", style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.27,
                    right: 35,
                    left: 35
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(style: TextButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          ),child: Text("Capture Left Eye"),
                        ),
                        TextButton(style: TextButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                        ),child: Text("Capture Right Eye"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Get Result',style: TextStyle(
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
                              Navigator.pushNamed(context, 'get_result');
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
