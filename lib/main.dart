import 'package:flutter/material.dart';
import 'package:genre/ui/login_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: {'/home': (context) => Home(), '/post1': (context) => Post1()},
      title: 'TheGorgeousLogin',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginPage(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: new DrawerCustom(),
      backgroundColor: Colors.lime[100],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("GENRE APP"),
      ),
      body: ListView(
        children: <Widget>[
          CustomCard(),
          CustomCard(),
          CustomCard(),
        ],
      ),
    );
  }
}

class DrawerCustom extends Drawer{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return super.build(context);
  }
}

class CustomCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CustomCardState();
  }
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 275,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.white,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/post1'),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 150,
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/consistency.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "This Is How Google Will Collapse",
                  style: TextStyle(
                      fontFamily: 'Kievit_Medium',
                      fontSize: 28,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 12, right: 12, top: 0, bottom: 16),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Adam Marsono Putra",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Post1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: <Widget>[Icon(Icons.bookmark_border)],
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 15),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "This Is How Google Will Collapse",
                  style: TextStyle(
                      fontFamily: 'Kievit_Medium',
                      fontSize: 34,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/consistency.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tellus id interdum velit laoreet id donec. Aliquam ut porttitor leo a diam sollicitudin tempor id. Amet nisl suscipit adipiscing bibendum est ultricies integer quis. Semper viverra nam libero justo. Aliquam malesuada bibendum arcu vitae elementum. ",
                  style: TextStyle(
                      fontFamily: 'Kievit_Medium',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
