import 'package:flutter/material.dart';
import './app.dart';
import './loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import './search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chatting room",
      theme: mDefaultTheme,
      routes: <String, WidgetBuilder>{
        "app": (BuildContext context) => new App(),
        "friends": (_) =>
        new WebviewScaffold(
          url: "https://flutterchina.club/",
          appBar: new AppBar(
            title: new Text("Flutter website"),
          ),
          withZoom: true,
          withLocalStorage: true,
        ),
        "search": (BuildContext context) => new Search(),
      },
      home: new LoadingPage(),
    );
  }
}

final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Colors.green,
  scaffoldBackgroundColor: Color(0xffd9d9d9),
  cardColor: Colors.green,
);