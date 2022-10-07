import 'package:flutter/material.dart';
import 'package:introducao_flutter/home_page.dart';
import 'package:introducao_flutter/home_page_stateful.dart';
import 'package:introducao_flutter/singleton_pattern.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var s1 = SingletonPattern.instance;
    s1.id = 10;
    var s2 = SingletonPattern.instance;
    print(s1.hashCode);
    print(s2.hashCode);

    print(s2.id);
    var s3 = SingletonPattern.instance;
    var s4 = SingletonPattern.instance;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
        ),
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => HomePage(),
        'stateful': (context) => HomePageStateFul(),
      },
    );
  }
}
