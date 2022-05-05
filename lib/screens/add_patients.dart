import 'package:flutter/material.dart';

class AddPatients extends StatefulWidget {
  @override
  _AddPatientsState createState() => _AddPatientsState();
}

class _AddPatientsState extends State<AddPatients> {
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
              padding: EdgeInsets.only(left: 45, top: 130),
              child: Text("Please fill the following information", style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.2,
                    right: 35,
                    left: 35
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Patient Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      //obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Age",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      //obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Sex",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      //obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      //obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Phone No",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      //obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Address",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Next',style: TextStyle(
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
                              Navigator.pushNamed(context, 'capture_image');
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
