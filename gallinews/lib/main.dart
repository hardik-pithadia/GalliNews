import 'package:flutter/material.dart';
import 'package:gallinews/Screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GalliNews"),
        ),
        body: const HomeScreen(),
      ),
    );
    throw UnimplementedError();
  }

}
