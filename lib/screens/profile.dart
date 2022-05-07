import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pushNamed(context, 'dashboard');
            },),
          title: Text("Setting"),
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 100),
              child: Text("Edit Profile", style: TextStyle(
                color: Colors.black,
                fontSize: 35,
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
                          hintText: "Riyal",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "gmriyal@gmail.com",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "01700839603",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "************",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Edit',style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700
                        ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){},
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
