import 'package:flutter/material.dart';
import 'CompanyStocks.dart';


class PatientsList extends StatefulWidget {
  @override
  _PatientsListState createState() => _PatientsListState();
}

class _PatientsListState extends State<PatientsList> {
  List stocksList = [
    CompanyStocks(name: "Alfee", price: "positive"),
    CompanyStocks(name: "Andy", price: "negative"),
    CompanyStocks(name: "Asle ", price: "negative"),
    CompanyStocks(name: "Banny", price: "positive"),
    CompanyStocks(name: "Condy", price: "positive"),
    CompanyStocks(name: "Ellie", price: "negative"),
    CompanyStocks(name: "Estasy.", price: "positive"),
    CompanyStocks(name: "Even", price: "negative"),
    CompanyStocks(name: "Riyal", price: "negative"),
    CompanyStocks(name: "Robin.", price: "positive"),
    CompanyStocks(name: "Rihad", price: "positive"),
    CompanyStocks(name: "Sandy",price: "negative"),
    CompanyStocks(name: "Seffu", price: "negative"),
    CompanyStocks(name: "Jack", price: "positive"),
    CompanyStocks(name: "Jacky", price: "negative"),
    CompanyStocks(name: "yummen", price: "positive")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List of Patients"),
        ),
        body: ListView.builder(
          itemCount: stocksList.length,
          itemBuilder: (context, index) {

            return Card(
              child: GestureDetector(

                onTap: (){
                 //Navigator.push(context, 'login');
                 //  Navigator.push(
                 //    context,
                 //    MaterialPageRoute(builder: (context) => login(item: _itemList[index])),
                 //  );
                },
                child: Padding(
                  padding: EdgeInsets.all(10),

                  child: ListTile(
                    title: Text(
                      stocksList[index].name,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    leading: CircleAvatar(
                      child: Text(
                        stocksList[index].name[0],
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    trailing: Text("\ ${stocksList[index].price}"),

                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
