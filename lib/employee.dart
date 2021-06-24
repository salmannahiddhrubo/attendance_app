import 'package:flutter/material.dart';

class Employee extends StatefulWidget {
  const Employee({Key key}) : super(key: key);

  @override
  _EmployeeState createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController idcontroller = TextEditingController();
  TextEditingController birthcontroller = TextEditingController();
  TextEditingController bloodcontroller = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee app'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                controller: namecontroller,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                controller: passcontroller,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                controller: emailcontroller,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Id",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                controller: idcontroller,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Birth",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                controller: birthcontroller,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Blood",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                controller: bloodcontroller,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Gender",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                controller: gendercontroller,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Date",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                controller: datecontroller,
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
