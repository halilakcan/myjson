import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Application',
      home: Scaffold(
        appBar: AppBar(
          title: Text(MyHomePage.title),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static String title = 'Halil Akcan Demo';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  
static const value ='{"text": "foo", "value": 1, "status": false, "extra": null}';
     static var data=null;
  void update() {
     data=jsonDecode(value);
    setState(() {
      index++;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    if (data == null) { return DefaultTextStyle(
      style: Theme.of(context).textTheme.headline2!,
      textAlign: TextAlign.center,
      child: Center(
        child:  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Your Data is below:',
          ),
          Text(
            "$index",
          ), const Text(
            "Not Ready",
          ), 
          ElevatedButton(onPressed: update, child: const Text("UPDATE"))
        ]),
      ),
    );} else {return DefaultTextStyle(
      style: Theme.of(context).textTheme.headline2!,
      textAlign: TextAlign.center,
      child: Center(
        child:  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Your Data is below:',
          ),
          Text(
            "$index",
          ), Text(
            data['text'],
          ),
          ElevatedButton(onPressed: update, child: const Text("UPDATE"))
        ]),
      ),
    );}
  }
}
