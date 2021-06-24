import 'package:flutter/material.dart';
//import 'package:flutter_application_app/bottomnav/bottonnav.dart';
import 'package:flutter_application_app/employee.dart';
import 'package:flutter_application_app/search/seachbar.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: Bottombar(),
      appBar: AppBar(
        title: Text('Attendance App'),
        backgroundColor: Colors.yellow,
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.next_plan),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Employee()));
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white10,
              ),
              child: CircleAvatar(
                child: Text(
                  'Salman',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Employee',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Employee()));
              },
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Email',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              'Good Morning',
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Khokababbu',
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.w900),
            ),
            Nahid(),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: .86,
                children: [
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.email,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Employee()));
                      },
                    ),
                  ),
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: Icon(
                      Icons.home,
                      color: Colors.yellow,
                      size: 30,
                    ),
                  ),
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.emoji_people,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Employee()));
                      },
                    ),
                  ),
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: Icon(
                      Icons.settings,
                      color: Colors.green,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: Bottombar(),
    );
  }
}
