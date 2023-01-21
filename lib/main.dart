import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Paper Less"),
          actions: [Icon(Icons.share)],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    currentAccountPicture: Center(
                      child: Image.network(
                          "https://media.licdn.com/dms/image/C5603AQHc-iTXTSQ43w/profile-displayphoto-shrink_800_800/0/1613745363716?e=2147483647&v=beta&t=6BqzPbpG1fsL7HF_1a0OL9LrbWwC3cf-Y4YEtXNYDNc"),
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                    accountName: Text(
                      "Shamol Chandra Das",
                      style: TextStyle(color: Colors.black),
                    ),
                    accountEmail: Text(
                      "shamolchandradas@gmail.com",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
