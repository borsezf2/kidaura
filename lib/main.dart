import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:kidaura_assg/scoped_model/MainModel.dart';

import 'pages/Screen1.dart';

void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  MainModel MainModelObj = new MainModel();


  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: MainModelObj,
      child: MaterialApp(
        title: 'Kidaura',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: Screen1(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Kidaura"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '1',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
