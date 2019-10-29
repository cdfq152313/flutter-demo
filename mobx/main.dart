import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_trail/store_1.dart';
import 'package:flutter_mobx_trail/store_2.dart';
import 'package:mobx/mobx.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Store1 store1;
  Store2 store2;

  @override
  void initState() {
    super.initState();
    store1 = Store1();
    store2 = Store2();
    autorun((_) {
      store1.list;
      print("Store1: Autorun");
    });
    autorun((_) {
      store2.list.length;
      print("Store2: Autorun");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text("Store 1"),
                  onPressed: () => store1.addItem(1),
                ),
                RaisedButton(
                  child: Text("Store 2"),
                  onPressed: () => store2.addItem(1),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(50),
                child: Observer(builder: (_) {
                  return ListView.builder(
                    itemBuilder: (context, index) => store2.list.length != 0 ? Text("NOT EMPTY") : Text("EMPTY"),
                    itemCount: 1,
                  );
                }),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
