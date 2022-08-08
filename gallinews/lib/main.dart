import 'package:flutter/material.dart';
import 'package:gallinews/Screens/HomeScreen.dart';
import 'package:gallinews/Screens/MenuScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   backgroundColor: Colors.redAccent,
        //   title: const Text("My Feeds"),
        //   leading: IconButton(
        //     onPressed: () {
        //       debugPrint("Back Button Clicked");
        //
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(builder: (context) => const MenuScreen())
        //       );
        //     },
        //     icon: const Icon(Icons.arrow_back_ios),
        //   ),
        // ),
        body: HomeScreen(),
      ),
    );
    throw UnimplementedError();
  }

}
