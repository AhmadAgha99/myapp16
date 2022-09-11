import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "images/1.jpg",
    "images/2.jfif",
    "images/3.jfif",
    "images/4.jfif",
    "images/5.jfif"
  ];
  List carName = ["Toyota", "BMW", "Mercedes", "Golf", "Audi"];
  List carSubTitle = ["H-1615", "G-4645", "D-4461", "C-48946", "j-464169"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int i) {
              return Container(
                padding: EdgeInsets.all(20),
                child: ListTile(
                  isThreeLine: true,
                  trailing: Icon(Icons.car_crash),
                  title: Text("${carName[i]}"),
                  subtitle: Text("${carSubTitle[i]}"),
                  leading: Image(image: AssetImage("${images[i]}")),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
