import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "route example",
    initialRoute: '/',
    routes: {
      '/': (context) => MyFirstRoute(),
      '/other': (context) => MyOtherRoute()
    },
  ));
}

class MyFirstRoute extends StatelessWidget {
  const MyFirstRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Route"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("other route"),
            onPressed: () {
              Navigator.pushNamed(context, '/other');
            }),
      ),
    );
  }
}

class MyOtherRoute extends StatelessWidget {
  const MyOtherRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other Route"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("back"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
