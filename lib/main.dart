import 'Fragment/BalanceFragment.dart';
import 'Fragment/ContactFragment.dart';
import 'Fragment/PersonFragment.dart';
import 'Fragment/HomeFragment.dart';
import "package:flutter/material.dart";

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      title: "Demo",
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Activity1()));
                },
                child: Text("Go Activity 1"))
          ],
        ),
      ),
    );
  }
}

class Activity1 extends StatelessWidget {
  const Activity1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity-1"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Go Activity 1"))
          ],
        ),
      ),
    );
  }
}
