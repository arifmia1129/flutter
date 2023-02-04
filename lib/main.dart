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
  HomeActivity({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  var myItems = [
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-1"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-2"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-3"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-4"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-5"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-6"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-7"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-8"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        minimumSize: Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: EdgeInsets.all(20));
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            bottom: TabBar(isScrollable: true, tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.contact_mail),
                text: "Contact",
              ),
              Tab(
                icon: Icon(Icons.balance),
                text: "Balance",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Person",
              ),
            ]),
          ),
          body: TabBarView(children: [
            HomeFragment(),
            ContactFragment(),
            BalanceFragment(),
            PersonFragment()
          ]),
        ));
  }
}
