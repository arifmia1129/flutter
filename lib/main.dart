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
    );
  }
}
