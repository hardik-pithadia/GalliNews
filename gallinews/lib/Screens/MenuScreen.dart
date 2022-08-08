import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget
{
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MenuScreenState();
    throw UnimplementedError();
  }
}

class _MenuScreenState extends State<MenuScreen>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Menu"),
        ),
      )
    );
    throw UnimplementedError();
  }

}