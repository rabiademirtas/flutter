import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBarExample(),
    );
  }
}
class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TAKVİM'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 137, 0, 0),
        leading: IconButton(
            onPressed: () {},
            icon: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.access_alarm),
            color: Color.fromARGB(255, 161, 160, 160),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Aktif alarminiz bulunmamaktadir.')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            color: Color.fromARGB(255, 161, 160, 160),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: Text("TEST"),
                  );
                },
              ));
            },
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )
        ),
      ),
      body: Center(
        child:Column(
          children: [
            Expanded(child:Image.asset('assets/takvim.jpeg'),),
            Expanded(child:Image.asset('assets/takvim2.jpeg'),),
            ],
        ),
        ),
        backgroundColor: Colors.black,
    );
  }
}