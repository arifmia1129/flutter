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

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        centerTitle: true,
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.blue,
        toolbarHeight: 50,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar("Your shopping cart is empty", context);
            },
            icon: Icon(Icons.shopping_cart),
            tooltip: "Check your shopping cart",
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MySnackBar("This is floating button action", context);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("This home bottom navbar", context);
          } else if (index == 1) {
            MySnackBar("This contact bottom navbar", context);
          } else {
            MySnackBar("This profile bottom navbar", context);
          }
        },
      ),
    );
  }
}
