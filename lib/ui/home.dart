// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class wisdom extends StatefulWidget {
  const wisdom({Key? key}) : super(key: key);

  @override
  _wisdomState createState() => _wisdomState();
}

class _wisdomState extends State<wisdom> {
  List<String> quotes = [
    "Stay Hungry. Stay Foolish.",
    "Good Artists Copy, Great Artists Steal.",
    "Argue with idiots, and you become an idiot.",
    "Be yourself; everyone else is already taken.",
    "Simplicity is the ultimate sophistication."
  ];

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quotes[_index % quotes.length],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton.icon(
                  onPressed: _showQuote,
                  style: ElevatedButton.styleFrom(primary: Colors.yellowAccent),
                  icon: Icon(Icons.add_chart_sharp),
                  label: Text('Inspire Me',
                      style: TextStyle(color: Colors.black))),
            )
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index++;
    });
  }
}

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[_getCard(), _getAvatar()],
        ),
      ),
    );
  }

  Container _getAvatar() {
    return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            border: Border.all(color: Colors.redAccent, width: 1.2),
            image: DecorationImage(
                image:
                    NetworkImage("https://picsum.photos/seed/picsum/300/300"),
                fit: BoxFit.cover)));
  }

  Container _getCard() {
    return Container(
        width: 350,
        height: 200,
        margin: const EdgeInsets.all(50.0),
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            color: Colors.pinkAccent, borderRadius: BorderRadius.circular(20)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Faraz Ahmad khan",
                style: const TextStyle(
                  fontSize: 20.9,
                ),
              ),
              Text("farazahmadkhan15@gmail.com"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Icon(Icons.person), Text('Farazahmad')],
              ),
            ]));
  }
}

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Scaffold"),
          centerTitle: true,
          backgroundColor: Colors.amberAccent.shade200,
          actions: <Widget>[
            IconButton(
                onPressed: () => debugPrint("Tapped"),
                icon: const Icon(Icons.email))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: const Icon(Icons.ac_unit_outlined),
          onPressed: () => debugPrint('Floating Tapped'),
        ),
        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'account'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
        ], onTap: (int index) => debugPrint(" tappped $index")),
        backgroundColor: Colors.yellowAccent,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              InkWell(
                child: Text(
                  "Tap me!",
                  style: TextStyle(fontSize: 60),
                ),
                onTap: null,
              )
            ],
          ),
        ));
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.blue,
      child: Center(
          child: Text(
        "Hello World",
        textDirection: TextDirection.ltr,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
      )),
    );
  }
}
